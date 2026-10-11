.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountVerifyPasswordViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyPasswordViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,65:1\n214#2:66\n*S KotlinDebug\n*F\n+ 1 AccountVerifyPasswordViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel\n*L\n62#1:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008-\u0010.J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0002R\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R%\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u001b\u0010\u000eR%\u0010\u001f\u001a\u0010\u0012\u000c\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u000c\u001a\u0004\u0008\u001e\u0010\u000eR\"\u0010\'\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001d\u0010+\u001a\u0008\u0012\u0004\u0012\u00020 0(8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "reset",
        "Landroid/view/View;",
        "view",
        "onHideButtonClick",
        "onNextButtonClick",
        "startVerify",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "event",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "j",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "getVerifyArgs",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "setVerifyArgs",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V",
        "verifyArgs",
        "",
        "kotlin.jvm.PlatformType",
        "k",
        "getUsername",
        "username",
        "l",
        "getPassword",
        "password",
        "",
        "m",
        "Z",
        "getShowPassword",
        "()Z",
        "setShowPassword",
        "(Z)V",
        "showPassword",
        "Landroidx/lifecycle/LiveData;",
        "n",
        "Landroidx/lifecycle/LiveData;",
        "isNextEnabled",
        "()Landroidx/lifecycle/LiveData;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountVerifyPasswordViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountVerifyPasswordViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,65:1\n214#2:66\n*S KotlinDebug\n*F\n+ 1 AccountVerifyPasswordViewModel.kt\ncom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel\n*L\n62#1:66\n*E\n"
    }
.end annotation


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public final n:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel$isNextEnabled$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel$isNextEnabled$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->n:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPassword()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getShowPassword()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->m:Z

    return p0
.end method

.method public final getUsername()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-object p0
.end method

.method public final isNextEnabled()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->n:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final onHideButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->m:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/account/event/HidePasswordEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/event/HidePasswordEvent;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/account/event/ShowPasswordEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/event/ShowPasswordEvent;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->m:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->m:Z

    return-void
.end method

.method public final onNextButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/account/event/CloseKeyBoardEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/event/CloseKeyBoardEvent;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->startVerify()V

    return-void
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->m:Z

    return-void
.end method

.method public final setShowPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->m:Z

    return-void
.end method

.method public final setVerifyArgs(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-void
.end method

.method public final startVerify()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    iget-object v4, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    iget-object v4, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->getCheckCurrentAccount()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel$a;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v1, "doOnNext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel$startVerify$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel$startVerify$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnError(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
