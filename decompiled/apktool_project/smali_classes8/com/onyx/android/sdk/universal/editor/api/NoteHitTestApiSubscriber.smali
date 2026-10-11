.class public final Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;
.super Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00085\u00106J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000cH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0017H\u0007J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010$\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010(\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0018\u0010*\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J \u0010+\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\u001cH\u0002R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;",
        "Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;",
        "event",
        "",
        "onSingleTapUpEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;",
        "onLongPressEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;",
        "onExitLongPressEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/TouchUpEvent;",
        "onTouchUpEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/TouchCancelEvent;",
        "onTouchCancelEvent",
        "Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;",
        "shape",
        "onAudioShapeHitTest",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;",
        "onHitTestLinkNoteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkAudioEvent;",
        "onHitTestLinkAudioEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/GotoShapeLinkEvent;",
        "onGotoShapeLinkEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/GotoLinkEvent;",
        "onGotoLinkEvent",
        "g",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "c",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;",
        "action",
        "e",
        "d",
        "",
        "n",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "j",
        "l",
        "m",
        "k",
        "i",
        "h",
        "",
        "a",
        "I",
        "getStartDragExcerptTimerKey",
        "()I",
        "setStartDragExcerptTimerKey",
        "(I)V",
        "startDragExcerptTimerKey",
        "<init>",
        "()V",
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
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->f(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onShapeSingleTapUp(Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->e(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V

    return-void
.end method

.method public static final synthetic access$startExcerptSelection(Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->k(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->supportSingleTapClick(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CurrentLayerLockedEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->n(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->l(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->setHitTestShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->e(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->h(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_d

    const/16 v4, 0x13

    if-eq v3, v4, :cond_c

    const/16 v4, 0x21

    if-eq v3, v4, :cond_b

    const/16 v4, 0x23

    if-eq v3, v4, :cond_c

    const/16 v4, 0x7d0

    if-eq v3, v4, :cond_6

    const/16 p1, 0xf

    if-eq v3, p1, :cond_5

    const/16 p1, 0x10

    if-eq v3, p1, :cond_4

    const/16 p1, 0x2c

    if-eq v3, p1, :cond_3

    const/16 p1, 0x2d

    if-eq v3, p1, :cond_c

    packed-switch v3, :pswitch_data_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShapeSingleTapUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestTapeShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestTapeShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto/16 :goto_2

    :cond_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$b;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$b;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$c;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$c;-><init>(Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->j(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x24

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isLineSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->l(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_2

    :cond_6
    instance-of v1, v0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->getTargetShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->d(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V

    goto :goto_2

    :cond_a
    :goto_1
    return-void

    :cond_b
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestLinkShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestLinkShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_2

    :cond_c
    :pswitch_3
    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->l(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->i(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :cond_e
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->a:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    return-void
.end method

.method public final getStartDragExcerptTimerKey()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->a:I

    return p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isImageShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isLocked(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isImageShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_3
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Integer;

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public final i(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 7

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartAnnotationSelectionAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartAnnotationSelectionAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestEditTextShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestEditTextShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestExcerptShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestExcerptShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestShapeAndStartTransformAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result p0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 p1, 0x13

    if-eq p0, p1, :cond_0

    const/16 p1, 0x21

    if-eq p0, p1, :cond_0

    const/16 p1, 0x23

    if-eq p0, p1, :cond_0

    const/16 p1, 0x2a

    if-eq p0, p1, :cond_0

    const/16 p1, 0x2d

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x24

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isLineSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onAudioShapeHitTest(Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestAudioShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestAudioShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onExitLongPressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ExitLongPressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->g()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/DismissLongPressPopupEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/DismissLongPressPopupEvent;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onGotoLinkEvent(Lcom/onyx/android/sdk/universal/editor/events/note/GotoLinkEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/GotoLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/GotoLinkEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onGotoShapeLinkEvent(Lcom/onyx/android/sdk/universal/editor/events/note/GotoShapeLinkEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/GotoShapeLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/GotoShapeLinkEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onHitTestLinkAudioEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkAudioEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkAudioEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestAudioLinkShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkAudioEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestAudioLinkShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onHitTestLinkNoteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenOpenShapeLinkEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkPageType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->gotoPageOrShape(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    :cond_3
    return-void
.end method

.method public final onLongPressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->g()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/LongPressEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/LongPressAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$a;-><init>(Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSingleTapUpEvent(Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isCurNoteLayerLocked(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->b(Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isShapeTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v1, Lcom/sunia/HTREnginev2/hwj;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/hwj;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;->setPredicate(Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$d;-><init>(Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$onSingleTapUpEvent$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber$onSingleTapUpEvent$3;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onTouchCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/app/TouchCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/TouchCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->g()V

    return-void
.end method

.method public final onTouchUpEvent(Lcom/onyx/android/sdk/universal/editor/events/app/TouchUpEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/TouchUpEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->g()V

    return-void
.end method

.method public final setStartDragExcerptTimerKey(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/api/NoteHitTestApiSubscriber;->a:I

    return-void
.end method
