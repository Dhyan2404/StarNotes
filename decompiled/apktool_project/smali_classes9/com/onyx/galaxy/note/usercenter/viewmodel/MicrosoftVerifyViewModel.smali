.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation build Ldagger/hilt/android/lifecycle/HiltViewModel;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000eR\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "requestMicrosoftAuth",
        "Landroid/content/Intent;",
        "data",
        "handleMicrosoftLogOff",
        "disposeActions",
        "e",
        "f",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "i",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "requestMicrosoftAuthDispose",
        "j",
        "microsoftLogOffDisposable",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "k",
        "Lkotlin/Lazy;",
        "d",
        "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "microsoftAccountAuth",
        "<init>",
        "()V",
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
.field public i:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$microsoftAccountAuth$2;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$microsoftAccountAuth$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$logOffMicrosoft(Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->e(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$onAccountDestroyed(Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->f(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final d()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    return-object p0
.end method

.method public final disposeActions()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->j:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public final e(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->j:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->d()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->createAuthResultAction(Landroid/content/Context;Landroid/content/Intent;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->j:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$a;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$a;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$b;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$c;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$c;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$d;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->j:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f(Landroidx/fragment/app/Fragment;)V
    .locals 3

    new-instance p0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_logoff_success:I

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_thanks:I

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$e;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$e;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final handleMicrosoftLogOff(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createWithConfirmWarningIconStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMask(F)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_warning:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMessageTextRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_continue_use:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonTitleRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_confirm_logoff:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonTitleRes(I)V

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$handleMicrosoftLogOff$1$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$handleMicrosoftLogOff$1$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnLeftButtonClick(Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$handleMicrosoftLogOff$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel$handleMicrosoftLogOff$1$2;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnRightButtonClick(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->show()V

    return-void
.end method

.method public final requestMicrosoftAuth(Landroidx/fragment/app/Fragment;)V
    .locals 9
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->d()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-interface {v0, p1, v1, v2}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->createRequestAuth(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
