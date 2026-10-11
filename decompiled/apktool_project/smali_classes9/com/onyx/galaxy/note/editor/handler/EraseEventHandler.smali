.class public Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0008\u0010\u0013\u001a\u00020\u0012H\u0014J\u0008\u0010\u0015\u001a\u00020\u0014H\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;",
        "event",
        "onShowEraseViewEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;",
        "onUpdateEraseViewPositionEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideEraseViewEvent;",
        "onHideEraseViewEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityUpOrCancelEvent;",
        "onActivityUpOrCancelEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;",
        "onEraseEndEvent",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "switchLastTool",
        "Landroid/view/View;",
        "getEraseView",
        "",
        "getEraseViewOffset",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "f",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "g",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "eraseAutoCancelOption",
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


# instance fields
.field public final f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAutoCancelSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->g:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->b(Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eraseView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->getEraseViewOffset()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    aget v2, p0, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    sub-float/2addr p2, v0

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    add-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public getEraseView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getEraseCircle()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public getEraseViewOffset()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorViewOffsetLocation()[I

    move-result-object p0

    return-object p0
.end method

.method public final onActivityUpOrCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ActivityUpOrCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ActivityUpOrCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->getEraseView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final onEraseEndEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->g:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasSelectedPen()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenContext;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/PenContext;->getLastShapeTool()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->switchLastTool(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onHideEraseViewEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideEraseViewEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideEraseViewEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->getEraseView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final onShowEraseViewEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->getEraseView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->getEraseViewOffset()[I

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->getEraseType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->erase_stroke_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/onyx/galaxy/note/R$drawable;->erase_circle_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->getEraseRadius()F

    move-result v1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    sub-float/2addr p1, v2

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final onUpdateEraseViewPositionEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->getEraseView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/brf;

    invoke-direct {v1, p0, v0, p1}, Lcom/sunia/HTREnginev2/brf;-><init>(Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchLastTool(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchLastToolEvent;-><init>()V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
