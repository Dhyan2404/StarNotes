.class public final Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;
.super Lcom/hjq/window/EasyWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PixelCaptureWindow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hjq/window/EasyWindow<",
        "Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic s:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Landroid/app/Application;Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;",
            ")V"
        }
    .end annotation

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPixelView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;->s:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-direct {p0, p2}, Lcom/hjq/window/EasyWindow;-><init>(Landroid/app/Application;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/hjq/window/EasyWindow;->setOutsideTouchable(Z)Lcom/hjq/window/EasyWindow;

    new-instance p2, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow$1;

    invoke-direct {p2, p1, p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow$1;-><init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;)V

    invoke-virtual {p0, p2}, Lcom/hjq/window/EasyWindow;->setOnWindowLifecycle(Lcom/hjq/window/EasyWindow$OnWindowLifecycle;)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0, p3}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;->j()V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "getWindowParams(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->matchScreen(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeContentView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->matchParent(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public final onOrientationChanged(Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$PixelCaptureWindow;->j()V

    return-void
.end method
