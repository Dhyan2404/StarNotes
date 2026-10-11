.class public final Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->q(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1",
        "Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelCaptureCallback;",
        "onCaptureCanceled",
        "",
        "onPixelCaptured",
        "color",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->access$getCurrentEasyWindow$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Lcom/hjq/window/EasyWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->access$getColorPublisher$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->access$onCaptureCancel(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method public onPixelCaptured(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->access$getCurrentEasyWindow$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Lcom/hjq/window/EasyWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction$pickScreenPixel$screenPixelView$1;->a:Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;->access$getColorPublisher$p(Lcom/onyx/galaxy/note/common/action/ScreenPixelCaptureColorAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method
