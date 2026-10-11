.class public final Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;",
        "Ljava/util/TimerTask;",
        "",
        "run",
        "",
        "e",
        "F",
        "mCurrentVelocityY",
        "f",
        "mFirstVelocityY",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView;",
        "g",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView;",
        "mWheelView",
        "wheelView",
        "velocityY",
        "<init>",
        "(Lcom/onyx/android/sdk/ui/wheelview/WheelView;F)V",
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
.field public e:F

.field public final f:F

.field public final g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/wheelview/WheelView;F)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/wheelview/WheelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "wheelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p2, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->f:F

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    const/high16 p1, 0x4f000000

    iput p1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    float-to-int v0, v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->f:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v3, 0x409f400000000000L    # 2000.0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->f:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->f:F

    :goto_0
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    :cond_2
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpg-double v3, v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v3, :cond_3

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_3

    move v5, v4

    :cond_3
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->cancelFuture()V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_4
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v3

    int-to-float v0, v0

    sub-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTotalScrollY(F)V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->isLoop()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getItemHeight()F

    move-result v1

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getInitPosition()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getItemsCount()I

    move-result v5

    sub-int/2addr v5, v4

    iget-object v4, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getInitPosition()I

    move-result v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v5

    float-to-double v5, v5

    float-to-double v7, v1

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    float-to-double v9, v3

    cmpg-double v1, v5, v9

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v1

    add-float v3, v1, v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v1

    float-to-double v5, v1

    add-double/2addr v5, v7

    float-to-double v7, v4

    cmpl-double v1, v5, v7

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v1

    add-float v4, v1, v0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_7

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    float-to-int v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTotalScrollY(F)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getTotalScrollY()F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    float-to-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTotalScrollY(F)V

    const/high16 v0, -0x3de00000    # -40.0f

    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    :cond_8
    :goto_2
    iget v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    cmpg-float v1, v0, v2

    const/high16 v2, 0x41a00000    # 20.0f

    if-gez v1, :cond_9

    add-float/2addr v0, v2

    goto :goto_3

    :cond_9
    sub-float/2addr v0, v2

    :goto_3
    iput v0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->e:F

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;->g:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_a

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    return-void
.end method
