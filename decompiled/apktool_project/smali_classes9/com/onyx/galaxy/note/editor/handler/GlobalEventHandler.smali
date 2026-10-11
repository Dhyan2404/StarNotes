.class public final Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010L\u001a\u00020I\u00a2\u0006\u0004\u0008M\u0010NJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\'H\u0007J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020GH\u0007R\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010K\u00a8\u0006O"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "",
        "event",
        "",
        "a",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/note/GraphConvertOptionUpdatedEvent;",
        "onGraphConvertOptionUpdatedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;",
        "onShowImportSuccessDialog",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;",
        "onChangeStrokeWidthEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;",
        "onChangeStrokeColorEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokePressureSensitivityEvent;",
        "onChangeStrokePressureSensitivityEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocitySensitivityEvent;",
        "onChangeStrokeVelocitySensitivityEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityAmplifierEvent;",
        "onChangeStrokeVelocityAmplifierEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityIgnoreThresholdEvent;",
        "onChangeStrokeVelocityIgnoreThresholdEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;",
        "onChangeStrokeVelocityLowerBound",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityUpperBoundEvent;",
        "onChangeStrokeVelocityUpperBound",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeAlphaFactorEvent;",
        "onChangeStrokeAlphaFactorEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeSmoothLevelEvent;",
        "onChangeStrokeSmoothLevelEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;",
        "onChangeShapeTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;",
        "onChangeSubShapeTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;",
        "onSwitchExcerptTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;",
        "onChangeEraserWidthEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;",
        "onChangeEraseTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;",
        "onChangePenArgsEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartDrawingShapeEvent;",
        "onStartDrawingShapeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;",
        "onStartUniversalShapeDrawingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartLaserShapeDrawingEvent;",
        "onStartLaserShapeDrawingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartEraseHandlerEvent;",
        "onStartEraseHandlerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartSelectionHandlerEvent;",
        "onStartSelectionHandlerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;",
        "onStartTextInputHandlerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptHandlerEvent;",
        "onStartExcerptHandlerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;",
        "onActivateShapeHandlerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EnableFreeMovePaperEvent;",
        "onEnableFreeMovePaperEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;",
        "onReloadBoxManagerWithSettingsEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/RedrawNoteEvent;",
        "onRedrawNoteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteTagShapesEvent;",
        "onDeleteTagShapesEvent",
        "Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;",
        "onChangeScrollerConfigEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;",
        "onChangeTouchModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowTapeShapeOverlayEvent;",
        "onShowTapeShapeOverlayEvent",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "editorBundleManager",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V",
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
.field public final e:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundleManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->init(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    return-void
.end method

.method public final onActivateShapeHandlerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ActivateShapeHandlerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

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

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeEraserWidthEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangePenArgsEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeScrollerConfigEvent(Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeShapeTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeAlphaFactorEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeAlphaFactorEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeAlphaFactorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeColorEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeColorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokePressureSensitivityEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokePressureSensitivityEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokePressureSensitivityEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeSmoothLevelEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeSmoothLevelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeSmoothLevelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeVelocityAmplifierEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityAmplifierEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityAmplifierEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeVelocityIgnoreThresholdEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityIgnoreThresholdEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityIgnoreThresholdEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeVelocityLowerBound(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityLowerBoundEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeVelocitySensitivityEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocitySensitivityEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocitySensitivityEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeVelocityUpperBound(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityUpperBoundEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeVelocityUpperBoundEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeStrokeWidthEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeWidthEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeSubShapeTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeTouchModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDeleteTagShapesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DeleteTagShapesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DeleteTagShapesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEnableFreeMovePaperEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EnableFreeMovePaperEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EnableFreeMovePaperEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onGraphConvertOptionUpdatedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/GraphConvertOptionUpdatedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/GraphConvertOptionUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onRedrawNoteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedrawNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/RedrawNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onReloadBoxManagerWithSettingsEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ReloadBoxManagerWithSettingsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onShowImportSuccessDialog(Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onShowTapeShapeOverlayEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ShowTapeShapeOverlayEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowTapeShapeOverlayEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartDrawingShapeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartDrawingShapeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartDrawingShapeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartEraseHandlerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartEraseHandlerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartEraseHandlerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartExcerptHandlerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptHandlerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptHandlerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartLaserShapeDrawingEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartLaserShapeDrawingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartLaserShapeDrawingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartSelectionHandlerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartSelectionHandlerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartSelectionHandlerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartTextInputHandlerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartUniversalShapeDrawingEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartUniversalShapeDrawingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSwitchExcerptTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/GlobalEventHandler;->a(Ljava/lang/Object;)V

    return-void
.end method
