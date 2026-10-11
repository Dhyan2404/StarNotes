.class public final Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;",
        "event",
        "onScaleResultEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEnableEvent;",
        "onScaleEnableEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleDisabledEvent;",
        "onScaleDisabledEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "onConfigurationChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "onThemeChangedEvent",
        "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;",
        "onSystemThemeChangedEvent",
        "Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;",
        "a",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;",
        "scaleIndicator",
        "",
        "g",
        "I",
        "indicatorOffset",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public f:Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->scale_indicator_y_offset:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->g:I

    sget-object p1, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;-><init>(Landroid/app/Activity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;

    return-object v1
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->unRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onConfigurationChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onScaleDisabledEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleDisabledEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleDisabledEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentDisplayScale(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)F

    move-result p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;-><init>(F)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onScaleEnableEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEnableEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEnableEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEnableEvent;->getEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setEnabledScale(Z)V

    return-void
.end method

.method public final onScaleResultEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->a()Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->editorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->g:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;->setXYOffset(II)V

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->displayRoundScale(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;->show(F)V

    return-void
.end method

.method public final onSystemThemeChangedEvent(Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;->resetTheme()V

    :cond_0
    return-void
.end method

.method public final onThemeChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ScaleEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScaleIndicatorPopup;->resetTheme()V

    :cond_0
    return-void
.end method
