.class public final Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\r\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\nR\u0016\u0010\u000f\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;",
        "Ljava/util/TimerTask;",
        "",
        "run",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView;",
        "e",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView;",
        "wheelView",
        "",
        "f",
        "I",
        "offset",
        "g",
        "realTotalOffset",
        "h",
        "realOffset",
        "<init>",
        "(Lcom/onyx/android/sdk/ui/wheelview/WheelView;I)V",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/wheelview/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "wheelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    iput p2, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->f:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->h:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->f:I

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->g:I

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->g:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->h:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->h:I

    :cond_2
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v3

    const/16 v1, 0xbb8

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->cancelFuture()V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v3

    iget v4, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->h:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTotalScrollY(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->isLoop()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getItemHeight()F

    move-result v0

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getInitPosition()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getItemsCount()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getInitPosition()I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->h:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTotalScrollY(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->cancelFuture()V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->e:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->g:I

    iget v1, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;->g:I

    :goto_1
    return-void
.end method
