.class public final Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;
.super Lcom/onyx/galaxy/note/usercenter/ui/Hilt_LogOffAgreementFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogOffAgreementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogOffAgreementFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,229:1\n106#2,15:230\n106#2,15:245\n106#2,15:260\n41#3,5:275\n41#3,5:280\n41#3,5:285\n41#3,5:290\n*S KotlinDebug\n*F\n+ 1 LogOffAgreementFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment\n*L\n56#1:230,15\n57#1:245,15\n58#1:260,15\n195#1:275,5\n198#1:280,5\n201#1:285,5\n203#1:290,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00085\u00106J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\"\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0003J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\"\u001a\u0004\u0008(\u0010)R\u001b\u0010/\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\"\u001a\u0004\u0008-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\"\u001a\u0004\u00082\u00103\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "root",
        "Landroid/view/View;",
        "setContentView",
        "onDestroyView",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "event",
        "onNetworkChanged",
        "n0",
        "o0",
        "u0",
        "w0",
        "v0",
        "Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;",
        "i1",
        "Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "j1",
        "Lkotlin/Lazy;",
        "q0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "accountViewModel",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;",
        "k1",
        "s0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;",
        "huaweiViewModel",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;",
        "l1",
        "r0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;",
        "googleViewModel",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;",
        "m1",
        "t0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;",
        "microsoftViewModel",
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
        "SMAP\nLogOffAgreementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogOffAgreementFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,229:1\n106#2,15:230\n106#2,15:245\n106#2,15:260\n41#3,5:275\n41#3,5:280\n41#3,5:285\n41#3,5:290\n*S KotlinDebug\n*F\n+ 1 LogOffAgreementFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment\n*L\n56#1:230,15\n57#1:245,15\n58#1:260,15\n195#1:275,5\n198#1:280,5\n201#1:285,5\n203#1:290,5\n*E\n"
    }
.end annotation


# instance fields
.field public i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

.field public final j1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/Hilt_LogOffAgreementFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$accountViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$accountViewModel$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->j1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v6, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v6, p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->k1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$6;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$7;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$8;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$8;-><init>(Lkotlin/Lazy;)V

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v5, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v6, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$10;

    invoke-direct {v6, p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->l1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$11;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$11;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$12;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$12;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$13;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$13;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$14;

    invoke-direct {v3, v5, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$14;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$15;

    invoke-direct {v4, p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$special$$inlined$viewModels$default$15;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->m1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    return-object p0
.end method

.method public static final synthetic access$getGoogleViewModel(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->r0()Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHuaweiViewModel(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->s0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMicrosoftViewModel(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->t0()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onAccountDestroyed(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->v0()V

    return-void
.end method

.method public static final synthetic access$selectVerifyMethod(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->w0()V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->p0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final p0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final n0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->s0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->getEvents()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$addFragmentEvent$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$addFragmentEvent$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$b;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->backButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/v2j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v2j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$onActivityResult$2;

    invoke-direct {p1, p0, p3}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$onActivityResult$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$onActivityResult$1;

    invoke-direct {p1, p0, p3}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$onActivityResult$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff94

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->s0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->unregisterHuaweiLauncher()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->r0()Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;->disposeActions()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->t0()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->disposeActions()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onNetworkChanged(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;->getConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez p1, :cond_1

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->u0()V

    :cond_2
    return-void
.end method

.method public final q0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->j1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    return-object p0
.end method

.method public final r0()Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->l1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;

    return-object p0
.end method

.method public final s0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->k1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    return-object p0
.end method

.method public setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->q0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->setViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->o0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->u0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez p0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t0()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->m1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

    return-object p0
.end method

.method public final u0()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getAccountLogoffService()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    const/4 v4, 0x0

    const-string v5, "binding"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v3, v1}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->setWebViewCallback(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v3, v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez v3, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v6, "native"

    invoke-virtual {v3, v6, v1}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->registerNativeObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v3, v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez v3, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_2
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v3, v2}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->openWebpage(Ljava/lang/String;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v0, v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->i1:Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, v0

    :goto_0
    iget-object v5, v4, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->loadingView:Landroid/widget/LinearLayout;

    const-string v0, "loadingView"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startAlphaAnimation$default(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    sget-object v13, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    const/4 v14, 0x0

    new-instance v15, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$1;

    invoke-direct {v15, v1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final v0()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_title_logoff_success:I

    sget v3, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_thanks:I

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$a;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final w0()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->q0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "destroy"

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v3}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections;->toWechatVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToWechatVerify;

    move-result-object p0

    const-string v1, "toWechatVerify(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    goto :goto_5

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->s0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->setPurpose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->s0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->startAuthService(Landroid/app/Activity;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getGoogle()Lcom/onyx/android/sdk/data/account/model/GoogleModel;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->r0()Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/GoogleVerifyViewModel;->requestGoogleAuth(Landroidx/fragment/app/Fragment;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getMicrosoft()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->t0()Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/MicrosoftVerifyViewModel;->requestMicrosoftAuth(Landroidx/fragment/app/Fragment;)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {v3}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections;->toMixedVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToMixedVerify;

    move-result-object p0

    const-string v1, "toMixedVerify(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    :cond_a
    :goto_5
    return-void
.end method
