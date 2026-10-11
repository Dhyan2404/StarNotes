.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;
.super Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$Companion;,
        Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRContextLessHandleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRContextLessHandleAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,209:1\n344#2,3:210\n344#2,3:213\n*S KotlinDebug\n*F\n+ 1 HWRContextLessHandleAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction\n*L\n182#1:210,3\n189#1:213,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 -2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001-B\u0017\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0008\u0010\u000b\u001a\u00020\u0007H\u0016J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0013H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u0019\u001a\u00020\u0017H\u0002R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u001cR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010#R\u0016\u0010&\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010%\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "hitTestVisibleBoxTouchData",
        "",
        "onTouchDown",
        "onTouchMove",
        "onTouchUp",
        "dispose",
        "r",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "penStatusBean",
        "o",
        "",
        "pointDownTime",
        "q",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "hwrInput",
        "p",
        "n",
        "",
        "l",
        "m",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "k",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "downBoxInfo",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "rxPenGesture",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "touchPointList",
        "Z",
        "overHWRMinDistance",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;",
        "touchReader",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V",
        "Companion",
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
        "SMAP\nHWRContextLessHandleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRContextLessHandleAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,209:1\n344#2,3:210\n344#2,3:213\n*S KotlinDebug\n*F\n+ 1 HWRContextLessHandleAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction\n*L\n182#1:210,3\n189#1:213,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:D


# instance fields
.field public k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->mmToPx(Landroid/content/Context;F)D

    move-result-wide v0

    sput-wide v0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->p:D

    return-void
.end method

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

    new-instance p1, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-direct {p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-void
.end method

.method public static final synthetic access$getHWR_MIN_DISTANCE$cp()D
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->p:D

    return-wide v0
.end method

.method public static final synthetic access$handlePenStatus(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->o(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V

    return-void
.end method

.method public static final synthetic access$penGestureObservable(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->subscribeTouchData()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->dispose()V

    return-void
.end method

.method public hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchDown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "down missing"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$c;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$c;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$e;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$e;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_2

    const-string v0, "virtualBoxInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-super {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final l()Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getCurrentShapeType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPenShape(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getSubShapeType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->o:Z

    return p0
.end method

.method public final m()Z
    .locals 7

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v4, v0, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v3

    sget-wide v5, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->p:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->o:Z

    return v1
.end method

.method public final n()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setTextEnable(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setShapeEnable(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setGestureEnable(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setIncremental(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setResetRecognizer(Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v2, 0x0

    const-string v3, "downBoxInfo"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewWidth(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewHeight(F)V

    return-object v0
.end method

.method public final o(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V
    .locals 11

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v0

    sget-object v2, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;

    const-class v3, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "penStatusBean "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->getPenStatus()Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->setPenStatusBean(Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->getPenStatus()Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    move-result-object p1

    sget-object v5, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->q(J)V

    goto :goto_0

    :cond_3
    const-string p1, "Shape"

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setShapeEnable(Z)V

    :goto_0
    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->containsConvertContext(J)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;-><init>()V

    sget-object v5, Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;->RECOGNIZING:Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;

    invoke-virtual {p1, v5}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setRecognizeState(Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;)V

    new-instance v5, Lcom/onyx/android/sdk/base/data/TouchPointList;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v5, v6}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {p1, v5}, Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;->setTouchPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v5

    invoke-virtual {v5, v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->addConvertContext(JLcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start recognize, time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->p(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v5, p0, v4, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/StartHWRRecognitionAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->o:Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v1, 0x0

    const-string v2, "downBoxInfo"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->l:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setLimitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->getLimitRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_0

    const-string v1, "virtualBoxInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m()Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->ensureBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->n:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->inputPointerEvents(Lcom/onyx/android/sdk/base/data/TouchPointList;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public final q(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->containsConvertContext(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->isStrokeConverted(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->abortAndRemoveConvertContext(J)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;

    const-class v2, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", isConverted = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", aborted = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/hwr/utils/HWRLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;->m:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->getObservableHolder()Lcom/onyx/android/sdk/base/rx/ObservableHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/ObservableHolder;->getObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/HWRContextLessHandleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
