.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEraseHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n800#2,11:152\n800#2,11:163\n800#2,11:174\n*S KotlinDebug\n*F\n+ 1 EraseHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler\n*L\n56#1:152,11\n57#1:163,11\n58#1:174,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000bH\u0007J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000fH\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u0016\u0010!\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "",
        "onActivate",
        "onDeactivate",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;",
        "event",
        "startErasing",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;",
        "onChangeEraseTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DragAppendingPageEndEvent;",
        "onDragAppendingPageEndEvent",
        "Landroid/view/View;",
        "view",
        "Landroid/view/MotionEvent;",
        "",
        "onTouchEvent",
        "cancelAction",
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "e",
        "",
        "newHandler",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;",
        "b",
        "c",
        "d",
        "a",
        "f",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "g",
        "I",
        "activeHandler",
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
        "SMAP\nEraseHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n800#2,11:152\n800#2,11:163\n800#2,11:174\n*S KotlinDebug\n*F\n+ 1 EraseHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler\n*L\n56#1:152,11\n57#1:163,11\n58#1:174,11\n*E\n"
    }
.end annotation


# instance fields
.field public d:I


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

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getShapeHandlerActionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;

    instance-of v1, v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->onCancelErase()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(I)Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public final c()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->d:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getShapeHandlerActionList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getShapeHandlerActionList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getShapeHandlerActionList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

    if-eqz v2, :cond_7

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    :goto_3
    return-object p0
.end method

.method public cancelAction()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->cancelAction()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->a()V

    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->normalizeTouchAction(Landroid/view/MotionEvent;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler$handleEraseView$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler$handleEraseView$1;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->filterByFingerGesture(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->f()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->isAcceptEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->f()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->isAcceptEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/MotionEventKt;->toTouchPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->g(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->destroy()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->disposeActions()V

    return-void
.end method

.method public final e()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HideEraseViewEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HideEraseViewEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDrawingArgs()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getEraserWidth()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getCurrentEraseType()I

    move-result v0

    invoke-direct {v2, p1, v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;FI)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivate()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->e()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getCurrentEraseType()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->d:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->b(I)Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

    return-void
.end method

.method public final onChangeEraseTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->onDeactivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->e()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;->getEraseType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->setCurrentEraseType(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->onActivate()V

    return-void
.end method

.method public onDeactivate()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const-string v1, "render_key_eraser"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->f()V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    return-void
.end method

.method public final onDragAppendingPageEndEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DragAppendingPageEndEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DragAppendingPageEndEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->d(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public startErasing(Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;->getTouchData()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->g(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/EraseHandler;->c()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->startErasing(Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;)V

    :cond_0
    return-void
.end method
