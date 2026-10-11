.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        ">;>;",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUniversalShapeEditAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeEditAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,571:1\n2634#2:572\n288#2,2:574\n1#3:573\n1#3:581\n32#4,5:576\n*S KotlinDebug\n*F\n+ 1 UniversalShapeEditAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction\n*L\n110#1:572\n183#1:574,2\n110#1:573\n410#1:576,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u00020\u0004B\u0017\u0012\u0006\u0010{\u001a\u00020z\u0012\u0006\u0010}\u001a\u00020|\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0016\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J \u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u001e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0003H\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J\u0018\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0014H\u0002J\u0008\u0010!\u001a\u00020\u0006H\u0002J\u0008\u0010\"\u001a\u00020\u0006H\u0002J\u0008\u0010#\u001a\u00020\u0006H\u0002J\u0008\u0010$\u001a\u00020\u0006H\u0002J\u0008\u0010%\u001a\u00020\u0006H\u0002J\u0010\u0010\'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u000bH\u0002J \u0010-\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00102\u0006\u0010,\u001a\u00020+H\u0002J\u001c\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\u00020\u000f2\u0006\u0010/\u001a\u00020.H\u0002J.\u00105\u001a\u0008\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u00102\u001a\u0002012\u000e\u0008\u0002\u00104\u001a\u0008\u0012\u0004\u0012\u00020(03H\u0002J,\u00107\u001a\u0008\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u00102\u001a\u0002012\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020(03H\u0002J*\u0010:\u001a\u0006\u0012\u0002\u0008\u00030\u000f2\u0006\u00109\u001a\u0002082\u0006\u00102\u001a\u0002012\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020(03H\u0002J\u0014\u0010<\u001a\u0006\u0012\u0002\u0008\u00030\u000f2\u0006\u0010;\u001a\u000208H\u0002J2\u0010@\u001a\u0008\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00102\u0008\u0008\u0002\u0010>\u001a\u00020=2\u0008\u0008\u0002\u0010?\u001a\u00020\u000bH\u0002J \u0010C\u001a\u0008\u0012\u0004\u0012\u0002010\u000f2\u0006\u0010B\u001a\u00020A2\u0008\u0008\u0002\u0010>\u001a\u00020=H\u0002J\u001e\u0010E\u001a\u00020A2\u0006\u0010*\u001a\u00020\u00102\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020(0\u0002H\u0002J\u0010\u0010F\u001a\u00020\u00062\u0006\u00102\u001a\u000201H\u0002J\u0008\u0010H\u001a\u00020GH\u0002J \u0010L\u001a\u00020\u00062\u0006\u0010I\u001a\u00020G2\u0006\u0010J\u001a\u00020\u00102\u0006\u0010K\u001a\u00020+H\u0002J\u0012\u0010N\u001a\u00020\u00062\u0008\u0008\u0002\u0010M\u001a\u00020\u000bH\u0002J\u0014\u0010O\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u000fH\u0014J\u000e\u0010R\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020PJ\u0018\u0010S\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0010H\u0016J\u0008\u0010T\u001a\u00020\u0006H\u0016J\u0018\u0010U\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0010H\u0016J\u0010\u0010V\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003H\u0014J\u0006\u0010W\u001a\u00020\u000bJ\u0006\u0010X\u001a\u00020\u000bJ\u0006\u0010Y\u001a\u00020\u000bJ\u000e\u0010[\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020ZJ\u000e\u0010^\u001a\u00020\u00062\u0006\u0010]\u001a\u00020\\J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u000bJ\u0010\u0010a\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003H\u0014J\u0006\u0010b\u001a\u00020\u0006J\u001a\u0010c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\u00020\u000f2\u0006\u0010&\u001a\u00020\u000bJ\u0006\u0010d\u001a\u00020\u0010J\u0006\u0010e\u001a\u00020\u0006J\u0010\u0010h\u001a\u00020\u00062\u0006\u0010g\u001a\u00020fH\u0016J\u0006\u0010i\u001a\u00020\u0006R\u0016\u0010I\u001a\u00020G8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0016\u0010n\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010q\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0014\u0010v\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00087\u0010FR\u0014\u0010w\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008:\u0010FR\u0014\u0010x\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00080\u0010FR\u0014\u0010y\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008C\u0010F\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;",
        "dataList",
        "",
        "H",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "universalShape",
        "upTouchData",
        "",
        "editImmediately",
        "E",
        "touchData",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "B",
        "T",
        "A",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPointInPage",
        "isStylus",
        "D",
        "touchPoint",
        "F",
        "isSingleTapUp",
        "G",
        "",
        "S",
        "K",
        "downPointInRender",
        "U",
        "x",
        "N",
        "J",
        "C",
        "w",
        "switchProvider",
        "L",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "virtualBoxInfo",
        "Landroid/graphics/Matrix;",
        "boxMatrix",
        "z",
        "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;",
        "snapshot",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
        "result",
        "",
        "removedShapeList",
        "Q",
        "addedShapeList",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;",
        "crossPageShapeAction",
        "p",
        "action",
        "W",
        "Landroid/graphics/RectF;",
        "shapeRectF",
        "addToCmdStack",
        "s",
        "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;",
        "addShapeArgs",
        "r",
        "shapeList",
        "y",
        "I",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "createRenderContext",
        "renderContext",
        "virtualPageBoxInfo",
        "shapeEditorBoxMatrix",
        "X",
        "invalidate",
        "O",
        "create",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "onInterceptTouchDown",
        "dispose",
        "onTouchContentOutside",
        "onTouchMove",
        "isEditMode",
        "isUndefinedMode",
        "isUndefinedTransformAction",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;",
        "onShapeEdit",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "attr",
        "updateShapeAttr",
        "showMenu",
        "setShowMenu",
        "onTouchDown",
        "cancelEdit",
        "quitEditObservable",
        "getPageBoxInfo",
        "updateRenderContext",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "onThemeUpdated",
        "k",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;",
        "shapeEditor",
        "m",
        "Z",
        "isEnabledShowMenu",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "n",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "CONTINUE_EDIT",
        "CREATE_FIRST",
        "CREATE_NEXT",
        "EXIT_EDIT",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUniversalShapeEditAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeEditAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,571:1\n2634#2:572\n288#2,2:574\n1#3:573\n1#3:581\n32#4,5:576\n*S KotlinDebug\n*F\n+ 1 UniversalShapeEditAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction\n*L\n110#1:572\n183#1:574,2\n110#1:573\n410#1:576,5\n*E\n"
    }
.end annotation


# instance fields
.field public k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

.field public l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public final n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I


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

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->o:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->p:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->q:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r:I

    return-void
.end method

.method public static final M(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    return-void
.end method

.method public static synthetic P(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->O(Z)V

    return-void
.end method

.method public static synthetic R(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->Q(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final V(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$downEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$addCrossPageShapes(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->o(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$addCrossPageShapes(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->p(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$addShape(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->q(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createAddShapesBackgroundArgs(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->y(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShapeEditor$p(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    return-object p0
.end method

.method public static final synthetic access$hideMenu(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->A()V

    return-void
.end method

.method public static final synthetic access$hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->B(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$lowLatencyRender(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->C()V

    return-void
.end method

.method public static final synthetic access$onShapeEditImpl(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->E(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Z)V

    return-void
.end method

.method public static final synthetic access$onTouchDataList(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->H(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$postCommandEvent(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->I(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method

.method public static final synthetic access$removeShapesIfNeed(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->Q(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setEnabledShowMenu$p(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->m:Z

    return-void
.end method

.method public static final synthetic access$showMenu(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->T()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->V(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->M(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n(Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->v(Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Landroid/graphics/RectF;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r(Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->s(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 1

    const-string v0, "$shapeRectF"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$addShapeArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$virtualBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->getShapes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HideUniversalShapeSelectionEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HideUniversalShapeSelectionEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPageUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$o;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$o;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$p;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorResumeNext(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "onErrorResumeNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final C()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getHitTestBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    return-void
.end method

.method public final D(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->convertTouchPointFromPageToRender(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->S(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->q:I

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->K(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V

    :cond_1
    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r:I

    if-ne v1, p2, :cond_2

    return-void

    :cond_2
    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->o:I

    if-eq v1, p2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->N()V

    :cond_3
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isUndefinedMode()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getHitTestBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->updateVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->updateRenderContext()V

    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->q:I

    if-ne v1, p2, :cond_5

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->convertTouchPointFromRenderToPage(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    :cond_5
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->onShapeDown(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->w()V

    return-void
.end method

.method public final E(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->N()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->updateRenderContext()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->onShapeEdit(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->w()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;-><init>(Z)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final F(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->onShapeMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final G(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isAddMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->x()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->onShapeUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isUndefinedMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->L(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isEditMode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->T()V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;-><init>(Z)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final H(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->getPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getAction()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->F(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->isSingleTapUp(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->G(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isStylusToolType()Z

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->D(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->C()V

    return-void
.end method

.method public final I(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getUndoRedoCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/note/common/event/CommandEvent;-><init>(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeGuidelinesQueryAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeGuidelinesQueryAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$y;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$y;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final K(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->L(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->U(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_2
    return-void
.end method

.method public final L(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->quitEditObservable(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->clear()V

    return-void
.end method

.method public final N()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->clearGuideLine()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->J()V

    return-void
.end method

.method public final O(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    const-string v0, "render_key_universal"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderer(Ljava/lang/String;Z)V

    return-void
.end method

.method public final Q(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p3, v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/List;ILjava/lang/Object;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {p1, p0, p3}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$b0;

    invoke-direct {p1, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$b0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$c0;

    invoke-direct {p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$c0;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$d0;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$d0;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final S(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->p:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->hitTestByPriority(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->o:I

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isProviderChanged()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r:I

    return p0

    :cond_2
    if-nez p2, :cond_3

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r:I

    return p0

    :cond_3
    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->q:I

    return p0
.end method

.method public final T()V
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShapeRectInPage()Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {v3, v1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowUniversalShapeSelectionEvent;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final U(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 11

    new-instance v10, Lcom/onyx/android/sdk/geometry/data/TouchData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x3a

    const/4 v9, 0x0

    move-object v0, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/onyx/android/sdk/geometry/data/TouchData;-><init>(IILcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;

    invoke-direct {p1, v10}, Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    new-instance v0, Lcom/sunia/HTREnginev2/btn;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/btn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getAddShapeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->y(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->t(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Landroid/graphics/RectF;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final X(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p3

    invoke-static {p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setClipRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final cancelEdit()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->quitEditObservable(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->P(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;ZILjava/lang/Object;)V

    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
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

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$m;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setLowLatencyRenderData(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V

    return-object v1
.end method

.method public dispose()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->L(Z)V

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->P(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;ZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final getPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getHitTestBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public final isUndefinedMode()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isUndefinedMode()Z

    move-result p0

    return p0
.end method

.method public final isUndefinedTransformAction()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isUndefinedTransformAction()Z

    move-result p0

    return p0
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v7, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v8

    new-instance v9, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v7, v8, v9}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$a;

    invoke-direct {v0, v7}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$c;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->updateRenderContext()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/4 v1, 0x0

    const-string v2, "renderContext"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->drawAngles(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->drawExtraShapeContent(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->drawGuidelines(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez v3, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->drawSelectionPoints(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->drawRotationHandle(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 2
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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->onInterceptTouchDown(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onInterceptTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method

.method public final onShapeEdit(Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->quitEditObservable(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$q;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$t;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$t;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$u;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->touchDataScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$w;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$w;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$x;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$x;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p1, "doOnNext(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final onThemeUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->onThemeUpdated()V

    return-void
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

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->L(Z)V

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->setHitTestBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->onTouchEvent(Landroid/view/MotionEvent;)V

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->A()V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->getCrossPageShapeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->W(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$d;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$d;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;

    invoke-direct {v0, p0, p3, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "concatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v2

    const-string v3, "just(...)"

    if-nez v2, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->ensureShapeUniqueId()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getFeatureCollectionStr()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getFeatureMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getBoxMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    sget-object v7, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->notePageRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShapeRectFWithWidth()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateFeature()V

    sget-object v9, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {v9, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->clone(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v10

    invoke-virtual {p0, v10, v6, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->z(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Matrix;)V

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->updateFeature(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getReferenceShapes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->deepCopy(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1, v7}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    :cond_4
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->validateScaleLimit(Landroid/graphics/Matrix;)V

    :cond_5
    invoke-static {v6}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$f;

    invoke-direct {v4, p0, p1, v8}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$g;

    invoke-direct {v4, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$g;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$h;

    invoke-direct {v4, p0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$i;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$k;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$k;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final quitEditObservable(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$a0;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$a0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isUndefinedMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$z;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$z;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "flatMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$quitEditObservable$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$quitEditObservable$2;-><init>(Z)V

    new-instance p1, Lcom/sunia/HTREnginev2/dtn;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/dtn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V

    invoke-static {v1, v0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final r(Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;",
            "Landroid/graphics/RectF;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addShapes(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$addShapeImpl$1;

    invoke-direct {v2, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$addShapeImpl$1;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Lcom/sunia/HTREnginev2/ctn;

    invoke-direct {v3, p2, p1, v0}, Lcom/sunia/HTREnginev2/ctn;-><init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;

    invoke-direct {v1, p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Landroid/graphics/RectF;",
            "Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V

    invoke-virtual {v0, p4}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->setAddToCmdStack(Z)V

    invoke-virtual {p0, v0, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r(Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setShowMenu(Z)Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->m:Z

    return-object p0
.end method

.method public final updateRenderContext()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->getPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/4 v2, 0x0

    const-string v3, "renderContext"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getBoxMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p0, v1, v0, v4}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->X(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->k:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->updateRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void
.end method

.method public final updateShapeAttr(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->updateShapeAttr(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->C()V

    return-void
.end method

.method public final w()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    const-string v2, "render_key_universal"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->addRenderer$default(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->L(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->O(Z)V

    return-void
.end method

.method public final y(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->setAddToCmdStack(Z)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->setSetZOrder(Z)V

    return-object p0
.end method

.method public final z(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Matrix;)V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->createRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->X(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Matrix;)V

    new-instance p3, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-direct {p3, v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p0, v1, p2, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->P(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
