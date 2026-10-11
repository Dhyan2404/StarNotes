.class public final Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->startQuotaTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;


# direct methods
.method public constructor <init>(JJLcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 0

    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1;->a:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1;->a:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->access$getUseSingleLimit$p(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ReachLimitOnStop"

    goto :goto_0

    :cond_0
    const-string v1, "UsedOutOnStop"

    :goto_0
    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->access$setDialogPurpose$p(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1;->a:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->access$getCountDownTimer$p(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel$startQuotaTimer$1;->a:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const-string v0, "RecordAutoStop"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
