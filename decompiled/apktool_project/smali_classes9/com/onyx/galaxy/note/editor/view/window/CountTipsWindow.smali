.class public final Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u00a2\u0006\u0004\u00080\u00101J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0011H\u0007J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001b\u0010)\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\'\u001a\u0004\u0008\u001f\u0010(R\u0014\u0010,\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001f\u0010/\u001a\u0006\u0012\u0002\u0008\u00030-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\'\u001a\u0004\u0008#\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;",
        "",
        "",
        "dismiss",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "taskModel",
        "showCountDownEnd",
        "",
        "name",
        "showCountDownEndOne",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "event",
        "onConfigurationChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;",
        "onContainerRectChangedEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "onThemeChangedEvent",
        "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;",
        "onSystemThemeChangedEvent",
        "g",
        "",
        "xOffset",
        "yOffset",
        "f",
        "d",
        "h",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "a",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "Landroid/app/Activity;",
        "b",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/graphics/Rect;",
        "c",
        "Landroid/graphics/Rect;",
        "editorRect",
        "Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;",
        "binding",
        "e",
        "I",
        "windowDuration",
        "Lcom/hjq/window/EasyWindow;",
        "()Lcom/hjq/window/EasyWindow;",
        "window",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Landroid/app/Activity;Landroid/graphics/Rect;)V",
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
.field public final a:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:I

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->a:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c:Landroid/graphics/Rect;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->d:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$integer;->counter_tip_show_interval:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->e:I

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->f:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->e(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWindowDuration$p(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->e:I

    return p0
.end method

.method public static final e(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->a:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/DismissCounterTipsEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/DismissCounterTipsEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    return-object p0
.end method

.method public final c()Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hjq/window/EasyWindow;

    return-object p0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;->ivAction:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/tde;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tde;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string v1, "getRoot(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->setXYOffset(Lcom/hjq/window/EasyWindow;Landroid/view/View;III)I

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->h()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->e:I

    invoke-virtual {v0, v1}, Lcom/hjq/window/EasyWindow;->setDuration(I)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->update()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->show()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->counter_operation_tip_popup_offset_y:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->f(II)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->h()V

    :cond_0
    return-void
.end method

.method public final onContainerRectChangedEvent(Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;->getContainerRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->h()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->c()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeDecorView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showCountDownEnd(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;->tvTimeName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/utils/CounterUtils;->getFormatedTaskName(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;->tvTip:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_count_down_end:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->g()V

    return-void
.end method

.method public final showCountDownEndOne(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;->tvTimeName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;->tvTip:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_count_down_end_one:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->g()V

    return-void
.end method
