.class public final Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$startCycle$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->d()V
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
        "com/onyx/galaxy/note/common/view/CommonProgressDialog$startCycle$1",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$startCycle$1;->a:Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$startCycle$1;->a:Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->access$startCycle(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$startCycle$1;->a:Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->progressBar:Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->progress_cycle_increment:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
