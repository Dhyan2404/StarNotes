.class public final Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonProgressDialog.kt\ncom/onyx/galaxy/note/common/view/CommonProgressDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\u000c\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nJ\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u0008\u0010\u0012\u001a\u00020\u0004H\u0016J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002R\u001b\u0010\u001a\u001a\u00020\u00158FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "text",
        "setTitleText",
        "setSubText",
        "Lkotlin/Function0;",
        "block",
        "showCloseButton",
        "hideProgressText",
        "startCycleProgress",
        "",
        "progress",
        "updateProgress",
        "dismiss",
        "b",
        "d",
        "Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;",
        "e",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;",
        "binding",
        "",
        "f",
        "Z",
        "startCycle",
        "Landroid/os/CountDownTimer;",
        "g",
        "Landroid/os/CountDownTimer;",
        "timer",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonProgressDialog.kt\ncom/onyx/galaxy/note/common/view/CommonProgressDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public g:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$binding$2;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->c(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$startCycle(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->d()V

    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->dismiss()V

    return-void
.end method

.method public static synthetic showCloseButton$default(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->showCloseButton(Lkotlin/jvm/functions/Function0;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public final d()V
    .locals 8

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->progressBar:Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->progress_cycle_times:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v4

    sget v1, Lcom/onyx/galaxy/note/R$integer;->progress_interval_times:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v6

    new-instance v0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$startCycle$1;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog$startCycle$1;-><init>(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->g:Landroid/os/CountDownTimer;

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->g:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->g:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    return-object p0
.end method

.method public final hideProgressText()Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->llProgress:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffbc

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubText(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->tvSubTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setTitleText(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final showCloseButton(Lkotlin/jvm/functions/Function0;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/o5e;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/o5e;-><init>(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final startCycleProgress()Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->f:Z

    return-object p0
.end method

.method public final updateProgress(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->progressBar:Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->note_export_progress:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCommonProgressBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
