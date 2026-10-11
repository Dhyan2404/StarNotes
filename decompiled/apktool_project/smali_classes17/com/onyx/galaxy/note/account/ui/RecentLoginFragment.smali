.class public final Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n347#2:595\n347#2:596\n256#2,2:597\n256#2,2:599\n254#2:601\n*S KotlinDebug\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment\n*L\n150#1:595\n151#1:596\n243#1:597,2\n244#1:599,2\n576#1:601\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 g2\u00020\u0001:\u0001gB\u0007\u00a2\u0006\u0004\u0008e\u0010fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0012\u0010\r\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\u0012H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\"\u0010$\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0002J\u0010\u0010\'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020%H\u0002J\u0016\u0010.\u001a\u00020\u00022\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0002J\u0008\u0010/\u001a\u00020\u0002H\u0002J\u0008\u00100\u001a\u00020\u0002H\u0002J\u0010\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u000201H\u0002J\u0008\u00104\u001a\u00020\u0002H\u0002J\u0008\u00105\u001a\u00020\u0002H\u0002J\u0008\u00106\u001a\u00020\u0002H\u0002J\u0010\u00108\u001a\u00020\u00022\u0006\u00107\u001a\u00020\u000bH\u0002J\u0008\u00109\u001a\u00020\u0002H\u0002J\u001c\u0010;\u001a\u00020\u00022\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0:H\u0002J\u0008\u0010<\u001a\u00020\u0002H\u0002J\u0008\u0010=\u001a\u00020\u0002H\u0002J\u0012\u0010@\u001a\u00020\u00022\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0016J\u0008\u0010A\u001a\u00020\u0002H\u0016J$\u0010G\u001a\u00020F2\u0006\u0010C\u001a\u00020B2\u0008\u0010E\u001a\u0004\u0018\u00010D2\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0016J\u001a\u0010I\u001a\u00020\u00022\u0006\u0010H\u001a\u00020F2\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0016J\"\u0010J\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0016R\u0016\u0010M\u001a\u00020K8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008=\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010NR\u001b\u0010T\u001a\u00020P8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010Q\u001a\u0004\u0008R\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010VR\u0014\u0010Z\u001a\u00020X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u0010YR\'\u0010`\u001a\u0015\u0012\u000c\u0012\n \\*\u0004\u0018\u00010\u00150\u00150[\u00a2\u0006\u0002\u0008]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u001b\u0010d\u001a\u00020a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010Q\u001a\u0004\u0008b\u0010c\u00a8\u0006h"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "T0",
        "N0",
        "L0",
        "M0",
        "",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "accountList",
        "g1",
        "",
        "url",
        "V0",
        "U0",
        "Y0",
        "w0",
        "v0",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "B0",
        "A0",
        "",
        "b1",
        "t0",
        "D0",
        "type",
        "u0",
        "accountModel",
        "X0",
        "a1",
        "Z0",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "J0",
        "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;",
        "signInCredential",
        "K0",
        "G0",
        "result",
        "W0",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
        "accountDataBundleObservable",
        "y0",
        "e1",
        "x0",
        "",
        "t",
        "H0",
        "I0",
        "f1",
        "h1",
        "code",
        "k1",
        "F0",
        "",
        "j1",
        "c1",
        "d1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onResume",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "onActivityResult",
        "Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;",
        "Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "lastAccountModel",
        "Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;",
        "Lkotlin/Lazy;",
        "E0",
        "()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;",
        "viewModel",
        "Landroid/app/Dialog;",
        "Landroid/app/Dialog;",
        "wechatLoginDialog",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "i1",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "backButtonClickSource",
        "Landroidx/activity/OnBackPressedCallback;",
        "C0",
        "()Landroidx/activity/OnBackPressedCallback;",
        "mBackPressedCallback",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n347#2:595\n347#2:596\n256#2,2:597\n256#2,2:599\n254#2:601\n*S KotlinDebug\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment\n*L\n150#1:595\n151#1:596\n243#1:597,2\n244#1:599,2\n576#1:601\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCREEN_COMPACT:I = 0x1f4


# instance fields
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

.field public e1:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g1:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i1:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->Companion:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->i1:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$mBackPressedCallback$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$mBackPressedCallback$2;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->j1:Lkotlin/Lazy;

    return-void
.end method

.method public static final O0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->e1:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->X0(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    :cond_0
    return-void
.end method

.method public static final P0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const-class p1, Lcom/onyx/galaxy/note/account/ui/LoginActivity;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static final Q0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->c1()V

    return-void
.end method

.method public static final R0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragmentDirections;->gotoSettingsHelpAndFeedbackFragment()Landroidx/navigation/NavDirections;

    move-result-object p1

    const-string v0, "gotoSettingsHelpAndFeedbackFragment(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public static final S0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1()V

    return-void
.end method

.method public static final synthetic access$getBackButtonClickSource$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->i1:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWechatLoginDialog$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->g1:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$googleAuthLogin(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->G0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method

.method public static final synthetic access$handleLoginError(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->H0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$huaweiAuthLogin(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->K0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method

.method public static final synthetic access$microsoftAuthLogin(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->W0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V

    return-void
.end method

.method public static final synthetic access$onLogin(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->X0(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method

.method public static final synthetic access$onLoginFinish(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->Y0()V

    return-void
.end method

.method public static final synthetic access$updateAccountInfo(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->g1(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$wechatAppLogin(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->h1()V

    return-void
.end method

.method public static final synthetic access$wechatAppLoginByParams(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->j1(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$wechatQrCodeLogin(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public static final i1(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->F0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->z0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    return-void
.end method

.method public static final l1(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->g1:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->i1(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->Q0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->R0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->S0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->P0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->l1(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->O0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->x0()V

    return-void
.end method


# virtual methods
.method public final A0()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_account_bind_email_prefix_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final B0()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_account_bind_phone_prefix_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final C0()Landroidx/activity/OnBackPressedCallback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->j1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method public final D0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "NavigationType"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    return-object p0
.end method

.method public final F0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$getWeChatInfo$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$getWeChatInfo$1;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->getWeChatInfo(Landroid/content/Context;Landroid/app/Activity;Lcom/onyx/android/sdk/statistics/AuthResultListener;)V

    return-void
.end method

.method public final G0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->googleAuthLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->y0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final H0(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lcom/onyx/android/sdk/data/common/exception/ExpcetionsKt;->isNetworkErrorException(Ljava/lang/Throwable;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->network_error_hint:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_0
    instance-of p0, p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    check-cast p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->errorTypeToMessage(Lcom/onyx/android/sdk/base/common/error/OnyxException;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->login_fail:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void
.end method

.method public final I0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public final J0(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getThirdPartySignRequestCodes()Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$handleThirdPartyLogin$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$handleThirdPartyLogin$1;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Landroid/content/Intent;I)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final K0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->huaweiAuthLogin(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->y0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final L0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->C0()Landroidx/activity/OnBackPressedCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initBackDebounce$1;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final M0()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/account/action/ClearLogoffAccountAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/action/ClearLogoffAccountAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadRecentLoginAccountList()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getLocalAccountList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initData$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initData$1;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$b;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final N0()V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->L0()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvLogin"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/gel;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/gel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvLoginOther:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvLoginOther"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/hel;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/hel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyAccountList:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyAccountList"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/iel;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/iel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyFeedback:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/jel;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/jel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyDataTips:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyDataTips"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/kel;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/kel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->addOnLayoutChangeListener(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final T0()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v3, "getRoot(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "requireActivity(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/extension/ViewKt;->applyPaddingOnStatusBarChanges(Landroid/view/View;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyFeedback:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "llyFeedback"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyFeedback:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/extension/ViewKt;->adjustStatusBarMargin(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyDataTips:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v4, "llyDataTips"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez p0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyFeedback:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_7

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_7
    if-eqz v2, :cond_8

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_8
    invoke-static {v0, v5}, Lcom/onyx/android/sdk/extension/ViewKt;->adjustStatusBarMargin(Landroid/view/View;I)V

    return-void
.end method

.method public final U0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isLoginFinish()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$b;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isAgreed()Landroidx/databinding/ObservableField;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final V0(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, p0

    :goto_2
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->ivUserAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_avatar:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->ivUserAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_avatar:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_avatar:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v1, p0

    :goto_3
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->ivUserAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final W0(Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->microsoftAuthLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->y0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public final X0(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/bean/LoginType;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/LoginType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/LoginType;->isLoginByThirdParty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->a1(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->Z0(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    :goto_0
    return-void
.end method

.method public final Y0()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->w0()V

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/data/account/bean/LoginType;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/LoginType;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/account/bean/LoginType;->isLoginByThirdParty(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->b1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->t0()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->I0()V

    return-void
.end method

.method public final Z0(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/onyx/galaxy/note/account/ui/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "key_login_type"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginType()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "key_login_account"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a1(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->microsoftAuth(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->googleAuth(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->f1()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->huaweiAuth(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method

.method public final b1()Z
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getAccountBindPrimaryType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "email"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "phone"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasPhone()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c1()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showAccountListDialog$1;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->setListener(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final d1()V
    .locals 11

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->recent_login_data_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v4, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvDataTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvDataTips"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvDataTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyDataTips:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_3
    new-instance v10, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string p0, "requireContext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    sget-object v6, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v10

    move-object v5, v0

    invoke-direct/range {v1 .. v9}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-direct {p0, v10}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final e1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->x0()V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showLoginLoadingDialog$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showLoginLoadingDialog$1;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenResumed(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkAgreedPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showWeChatDialog$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showWeChatDialog$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showWeChatDialog$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$showWeChatDialog$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/account/view/dialog/WechatLoginDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->g1:Landroid/app/Dialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final g1(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;)V"
        }
    .end annotation

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getRecentLoginLocalAccountList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getLocalAccountList()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/galaxy/note/account/ui/LoginActivity;

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void

    :cond_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->e1:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvAccount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v3, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLoginAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->ivLoginType:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLoginTypeIconDrawable(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvLastLoginAt:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->last_login_at:I

    sget-object v6, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v3, v0}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLocalLoginAt(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMM_2()Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLoginAccountRoleIconDrawable(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->ivUserRole:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez v3, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_5
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->ivUserRole:Landroid/widget/ImageView;

    const-string v4, "ivUserRole"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_0

    :cond_6
    move p1, v5

    :goto_0
    const/16 v6, 0x8

    if-eqz p1, :cond_7

    move p1, v5

    goto :goto_1

    :cond_7
    move p1, v6

    :goto_1
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, p1

    :goto_2
    iget-object p1, v1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvTips"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    goto :goto_3

    :cond_9
    move v4, v5

    :goto_3
    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v5, v6

    :goto_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->V0(Ljava/lang/String;)V

    return-void
.end method

.method public final h1()V
    .locals 9

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->isWechatInstallation(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->checkNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    const-string v2, "view_galaxy_user_login_0001"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v1

    const-string v2, "click_galaxy_user_login_0001"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->createInitSdkAction(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/mel;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/mel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final j1(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "openid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "access_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unionid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->wechatAppLogin(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->y0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->login_fail:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final k1(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->wechatQrCodeLogin(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/lel;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnComplete(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "view_galaxy_user_login_0001"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->E0()Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    const-string v2, "click_galaxy_user_login_0001"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->y0(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->J0(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffe4

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    if-nez p1, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    sget-object v0, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/LoginUtils;->isLoginRequired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->I0()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    sget-object p2, Lcom/onyx/android/sdk/data/account/event/FinishBeforeLogin;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/FinishBeforeLogin;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->T0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->U0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->N0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->M0()V

    return-void
.end method

.method public final t0()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getAccountBindPrimaryType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->w0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->v0()V

    :goto_0
    return-void
.end method

.method public final u0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->D0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "purpose"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final v0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->A0()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasEmail()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    const-string v0, "bind_email_after_login"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->u0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->I0()V

    return-void
.end method

.method public final w0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->B0()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasPhone()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    const-string v0, "bind_phone_after_login"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->u0(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->I0()V

    return-void
.end method

.method public final x0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "LoginLoadingDialogFragm"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/view/LoginLoadingDialogFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public final y0(Lio/reactivex/rxjava3/core/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->e1()V

    new-instance v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$a;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/nel;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nel;-><init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
