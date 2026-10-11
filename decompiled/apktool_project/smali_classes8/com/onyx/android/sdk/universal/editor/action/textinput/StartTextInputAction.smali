.class public final Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0012H\u0014J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0017R\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0017R\u0018\u0010!\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "show",
        "setShowInitInputText",
        "",
        "textToInsert",
        "setTextToInsert",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "insertPoint",
        "setInsertPoint",
        "userProvider",
        "setSwitchToUserProvider",
        "editForAll",
        "setEditForAll",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "setTextShape",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "h",
        "Z",
        "showInitInputText",
        "i",
        "Ljava/lang/String;",
        "j",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "k",
        "switchToUserProvider",
        "m",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
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


# instance fields
.field public h:Z

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:Lcom/onyx/android/sdk/note/common/shape/Shape;
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

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->i:Ljava/lang/String;

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getDefaultInputTextPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->l:Z

    return-void
.end method

.method public static final synthetic access$active(Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->k:Z

    const/4 v1, 0x1

    const-string v2, "text_input_provider"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeUserProvider(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeShapeProvider(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->h:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->l:Z

    invoke-direct {v2, v3, v4, v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowInitInputTextEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;ZZ)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->l:Z

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final setEditForAll(Z)Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->l:Z

    return-object p0
.end method

.method public final setInsertPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "insertPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final setShowInitInputText(Z)Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->h:Z

    return-object p0
.end method

.method public final setSwitchToUserProvider(Z)Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->k:Z

    return-object p0
.end method

.method public final setTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->m:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final setTextToInsert(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textToInsert"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/StartTextInputAction;->i:Ljava/lang/String;

    return-object p0
.end method
