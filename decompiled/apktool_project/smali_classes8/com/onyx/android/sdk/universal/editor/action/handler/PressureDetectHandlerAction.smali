.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;,
        Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPressureDetectHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PressureDetectHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,212:1\n344#2,3:213\n*S KotlinDebug\n*F\n+ 1 PressureDetectHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction\n*L\n168#1:213,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 92\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002:9B\u001f\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010%\u001a\u00020\"\u00a2\u0006\u0004\u00087\u00108J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J.\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u0010\u001e\u001a\u00020\u001cH\u0002J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000c\u0010!\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\'R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008-\u0010/R\u0016\u00102\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u00101\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "",
        "onTouchDown",
        "onTouchMove",
        "onTouchUp",
        "dispose",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "penStatusBean",
        "o",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "lastPoint",
        "u",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "hitTestBoxInfo",
        "downTouchData",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;",
        "it",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "selection",
        "Lcom/onyx/android/sdk/universal/editor/action/selection/StartTextSelectionAction;",
        "s",
        "down",
        "t",
        "",
        "q",
        "p",
        "r",
        "l",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;",
        "k",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;",
        "args",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "rxPenGesture",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "touchPointList",
        "",
        "n",
        "Lkotlin/Lazy;",
        "()F",
        "eraserPressure",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "lastPenStatusBean",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;)V",
        "Companion",
        "Args",
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
        "SMAP\nPressureDetectHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PressureDetectHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,212:1\n344#2,3:213\n*S KotlinDebug\n*F\n+ 1 PressureDetectHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction\n*L\n168#1:213,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:F = 0.2f

.field public static final q:F = 0.85f


# instance fields
.field public final k:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchReader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->k:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    new-instance p1, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-direct {p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$eraserPressure$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$eraserPressure$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->n:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->o:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    return-void
.end method

.method public static final synthetic access$activeEraseHandler(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public static final synthetic access$getRxPenGesture$p(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    return-object p0
.end method

.method public static final synthetic access$handle(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->o(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startTextSelection(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryPressErase(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->t(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->dispose()V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->o:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->isUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "pen up, do not activeEraser"

    invoke-virtual {p1, p0, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    const-string v1, "erase_provider"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeShapeProvider(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->k:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->getQuitEvent()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->startErasing(Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;)V

    :cond_1
    return-void
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getEraserWidth()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getEraserWidth()F

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$e;

    invoke-direct {v1, p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final o(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->o:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->isLongPress()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p1, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->u(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;

    invoke-direct {v2, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setLimitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public onTouchUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->l:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public final p()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEnableStylusSelectTextOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final q()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getPressureSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/StartTextSelectionAction;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;->getContentPath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Z)V

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->display(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$j;

    invoke-direct {p2, p0, v6}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->k:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->getDetectEraser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->o:Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->isUp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "pen up, do not startEraser"

    invoke-virtual {p1, p0, v0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result p2

    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->n()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->r(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isTextSelectionTouchEnabled()Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->k:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->getTextSelectionPressureMax()F

    move-result v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->p()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->getDown()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v6

    new-instance v1, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    const-string v3, ""

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v12, 0x0

    move-object v2, v1

    move-object v4, v0

    move-object v5, v6

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;

    invoke-direct {v2, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$l;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
