.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 92\u00020\u0001:\u00019B\u0007\u00a2\u0006\u0004\u00087\u00108J\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000cJ\u0016\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\tH\u0002R\"\u0010\u0019\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R\u001d\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R*\u0010+\u001a\u0015\u0012\u000c\u0012\n %*\u0004\u0018\u00010\t0\t0$\u00a2\u0006\u0002\u0008&8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001c\u00100\u001a\u0008\u0012\u0004\u0012\u00020-0,8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001b\u00106\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "markEventConsumed",
        "Landroidx/activity/ComponentActivity;",
        "activityContext",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "registerHuaweiLauncher",
        "unregisterHuaweiLauncher",
        "Landroid/app/Activity;",
        "startAuthService",
        "askForVerify",
        "startHuaweiVerify",
        "e",
        "h",
        "g",
        "i",
        "Ljava/lang/String;",
        "getPurpose",
        "()Ljava/lang/String;",
        "setPurpose",
        "(Ljava/lang/String;)V",
        "purpose",
        "j",
        "getAuthorization",
        "setAuthorization",
        "authorization",
        "Landroidx/lifecycle/MutableLiveData;",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvents",
        "()Landroidx/lifecycle/MutableLiveData;",
        "events",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "l",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "getHuaweiLauncherObservable",
        "()Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "huaweiLauncherObservable",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "m",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "huaweiLauncher",
        "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "n",
        "Lkotlin/Lazy;",
        "f",
        "()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;",
        "huaweiAccountAuth",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Ljava/lang/String; = "huawei_auth_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
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

.field public final l:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->Companion:Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->j:Ljava/lang/String;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$huaweiAccountAuth$2;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$huaweiAccountAuth$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->n:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$navigateToAccountCenter(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->h(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/activity/ComponentActivity;Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->i(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/activity/ComponentActivity;Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/activity/ComponentActivity;Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->f()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->getAccountAuthAuthorization(Landroidx/activity/result/ActivityResult;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->e()V

    return-void

    :cond_2
    iput-object p3, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->askForVerify(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final askForVerify(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->i:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->startHuaweiVerify()V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createWithConfirmWarningIconStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMask(F)V

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_warning:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMessageTextRes(I)V

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_continue_use:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonTitleRes(I)V

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_title_confirm_logoff:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonTitleRes(I)V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$askForVerify$1$1;

    invoke-direct {v0, p0, p2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$askForVerify$1$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnLeftButtonClick(Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$askForVerify$1$2;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$askForVerify$1$2;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnRightButtonClick(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->show()V

    return-void
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v1, "Action Abort"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "huawei_auth_key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAuthorization()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getEvents()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getHuaweiLauncherObservable()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final getPurpose()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-static {}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections;->toAccountCenter()Landroidx/navigation/NavDirections;

    move-result-object p1

    const-string v0, "toAccountCenter(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final markEventConsumed()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final registerHuaweiLauncher(Landroidx/activity/ComponentActivity;Landroidx/fragment/app/Fragment;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Landroidx/activity/ComponentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/l0i;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/l0i;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;Landroidx/activity/ComponentActivity;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-virtual {p1, v1, p2, v2, v0}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    const-string p2, "register(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->m:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final setAuthorization(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->j:Ljava/lang/String;

    return-void
.end method

.method public final setPurpose(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->i:Ljava/lang/String;

    return-void
.end method

.method public final startAuthService(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->f()Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;->createAccountAuthServiceIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->m:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_1

    const-string p0, "huaweiLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final startHuaweiVerify()V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;->setAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;->setCode(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$a;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$a;-><init>(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$b;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->setSkipCloudLogout(Z)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel$c;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doOnNext(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final unregisterHuaweiLauncher()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->l:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->m:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_0

    const-string p0, "huaweiLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    return-void
.end method
