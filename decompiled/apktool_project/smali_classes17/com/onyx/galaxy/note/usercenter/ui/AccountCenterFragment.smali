.class public final Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;
.super Lcom/onyx/galaxy/note/usercenter/ui/Hilt_AccountCenterFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n106#2,15:435\n214#3:450\n214#3:451\n1#4:452\n*S KotlinDebug\n*F\n+ 1 AccountCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment\n*L\n77#1:435,15\n216#1:450\n255#1:451\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\\\u0010]J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u0008\u0010\u001d\u001a\u00020\u0002H\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J \u0010%\u001a\u00020\u00022\u0008\u0008\u0001\u0010!\u001a\u00020 2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\"H\u0002J\u0008\u0010&\u001a\u00020\u0002H\u0002J\u0008\u0010\'\u001a\u00020\u0002H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0002J\u0012\u0010-\u001a\u00020\u00022\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0002J\u0012\u00100\u001a\u00020\u00022\u0008\u0010/\u001a\u0004\u0018\u00010.H\u0016J\u0008\u00101\u001a\u00020\u0002H\u0016J\u0008\u00102\u001a\u00020\u0002H\u0016J\u001a\u00108\u001a\u0002072\u0006\u00104\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u000105H\u0016J\"\u0010<\u001a\u00020\u00022\u0006\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020 2\u0008\u0010;\u001a\u0004\u0018\u00010(H\u0016R\u001a\u0010B\u001a\u00020=8\u0010X\u0090D\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u001b\u0010L\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010KR\u001b\u0010Q\u001a\u00020M8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010I\u001a\u0004\u0008O\u0010PR\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010W\u001a\u00020R8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008V\u0010TR\u001c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020+0X8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "C0",
        "p0",
        "q0",
        "L0",
        "O0",
        "N0",
        "R0",
        "z0",
        "W0",
        "P0",
        "Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;",
        "dialog",
        "",
        "name",
        "F0",
        "s0",
        "E0",
        "D0",
        "x0",
        "v0",
        "K0",
        "t0",
        "J0",
        "w0",
        "U0",
        "u0",
        "S0",
        "purpose",
        "Q0",
        "",
        "messageResId",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "",
        "doOnNext",
        "y0",
        "M0",
        "H0",
        "Landroid/content/Intent;",
        "intent",
        "I0",
        "Landroid/net/Uri;",
        "uri",
        "G0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onResume",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "root",
        "Landroid/view/View;",
        "setContentView",
        "requestCode",
        "resultCode",
        "data",
        "onActivityResult",
        "",
        "i1",
        "Z",
        "getReloadLayoutOnConfigurationChanged$note_overseasRelease",
        "()Z",
        "reloadLayoutOnConfigurationChanged",
        "Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;",
        "j1",
        "Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "k1",
        "Lkotlin/Lazy;",
        "A0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "accountViewModel",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;",
        "l1",
        "B0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;",
        "huaweiViewModel",
        "Ljava/io/File;",
        "m1",
        "Ljava/io/File;",
        "photo",
        "n1",
        "avatar",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "o1",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "takePhotoLauncher",
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
        "SMAP\nAccountCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,434:1\n106#2,15:435\n214#3:450\n214#3:451\n1#4:452\n*S KotlinDebug\n*F\n+ 1 AccountCenterFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment\n*L\n77#1:435,15\n216#1:450\n255#1:451\n*E\n"
    }
.end annotation


# instance fields
.field public final i1:Z

.field public j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

.field public final k1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m1:Ljava/io/File;

.field public n1:Ljava/io/File;

.field public o1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/usercenter/ui/Hilt_AccountCenterFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->i1:Z

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$accountViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$accountViewModel$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->k1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->l1:Lkotlin/Lazy;

    return-void
.end method

.method public static final T0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unbind"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method public static final V0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unbind"

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToWechatVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;

    move-result-object p1

    const-string v0, "accountCenterToWechatVerify(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public static final synthetic access$askForLogout(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->s0()V

    return-void
.end method

.method public static final synthetic access$bindEmail(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->t0()V

    return-void
.end method

.method public static final synthetic access$bindHuawei(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->u0()V

    return-void
.end method

.method public static final synthetic access$bindPhone(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->v0()V

    return-void
.end method

.method public static final synthetic access$bindWechat(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->w0()V

    return-void
.end method

.method public static final synthetic access$cancelUserAgreement(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->x0()V

    return-void
.end method

.method public static final synthetic access$cropAvatarImage(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->z0()V

    return-void
.end method

.method public static final synthetic access$getAccountViewModel(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHuaweiViewModel(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->B0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$logOff(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->D0()V

    return-void
.end method

.method public static final synthetic access$logOut(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->E0()V

    return-void
.end method

.method public static final synthetic access$modifyNickname(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->F0(Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onHuaweiVerifySuccess(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->H0()V

    return-void
.end method

.method public static final synthetic access$onPhotoTaken(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->I0(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$rebindEmail(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->J0()V

    return-void
.end method

.method public static final synthetic access$rebindPhone(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->K0()V

    return-void
.end method

.method public static final synthetic access$resetPassword(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->M0()V

    return-void
.end method

.method public static final synthetic access$selectAvatarFile(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->N0()V

    return-void
.end method

.method public static final synthetic access$selectAvatarImage(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->O0()V

    return-void
.end method

.method public static final synthetic access$showNameInputDialog(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->P0()V

    return-void
.end method

.method public static final synthetic access$takeAvatarPhoto(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->R0()V

    return-void
.end method

.method public static final synthetic access$unbindHuawei(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->S0()V

    return-void
.end method

.method public static final synthetic access$unbindWechat(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->U0()V

    return-void
.end method

.method public static final synthetic access$uploadAvatarImage(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->W0()V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->T0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->r0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->V0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static final r0(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Landroid/view/View;)V
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
.method public final A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->k1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    return-object p0
.end method

.method public final B0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->l1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    return-object p0
.end method

.method public final C0()V
    .locals 9

    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    :goto_1
    invoke-static {v0, v5, v2, v3, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v6

    invoke-static {v0, v3, v2, v3, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    invoke-static {v0, v8, v2, v3, v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    const-string v8, "binding"

    if-nez v3, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->wechatLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez v3, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->vWechatDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez v1, :cond_4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->phoneLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v1, v6}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez v1, :cond_5

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_5
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->vPhoneDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v1, v6}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez v1, :cond_6

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->emailLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v1, v7}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez v1, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_7
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->vEmailDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    move v4, v5

    :cond_8
    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez p0, :cond_9

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v2, p0

    :goto_2
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->huaweiLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final D0()V
    .locals 1

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_log_off_agreement:I

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method

.method public final E0()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$d;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$d;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final F0(Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->user_tip_name_empty:I

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;->e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$e;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$f;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$f;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$3;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnError(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$modifyNickname$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final G0(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/common/UriToFileAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->m1:Ljava/io/File;

    if-nez v1, :cond_1

    const-string v1, "photo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/common/UriToFileAction;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$h;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$h;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H0()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->B0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->getPurpose()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bind"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_bind_success:I

    invoke-static {v0, v1, v4, v3, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    goto :goto_0

    :cond_0
    const-string v1, "unbind"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_unbind_success:I

    invoke-static {v0, v1, v4, v3, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->notifyChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final I0(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->z0()V

    :cond_0
    return-void
.end method

.method public final J0()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "rebind"

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToUnbindEmail(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToUnbindEmail;

    move-result-object v0

    const-string v1, "accountCenterToUnbindEmail(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final K0()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "rebind"

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToUnbindPhone(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToUnbindPhone;

    move-result-object v0

    const-string v1, "accountCenterToUnbindPhone(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final L0()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/action/ReloadAccountAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/action/ReloadAccountAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$i;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final M0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "password_reset"

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToMixedVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToMixedVerify;

    move-result-object v0

    const-string v1, "accountCenterToMixedVerify(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_bind_before_set_password:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_bind_before_set_password_only_email:I

    :goto_2
    new-instance v1, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v2, "requireActivity(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/android/sdk/universal/R$string;->tip:I

    invoke-direct {v1, p0, v2, v0}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;-><init>(Landroid/content/Context;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_3
    return-void
.end method

.method public final N0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    const-string v3, "photo"

    invoke-virtual {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getCacheFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->m1:Ljava/io/File;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/Matisse;->from(Landroidx/fragment/app/Fragment;)Lcom/onyx/android/sdk/matisse/Matisse;

    move-result-object p0

    const-string v0, "from(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/MatisseKt;->buildSelectionCreator(Lcom/onyx/android/sdk/matisse/Matisse;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->maxSelectable(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->forResult(I)V

    return-void
.end method

.method public final O0()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$selectAvatarImage$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$selectAvatarImage$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$selectAvatarImage$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$selectAvatarImage$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/usercenter/popup/AvatarSelectPopup;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->exitLayout:Landroid/widget/LinearLayout;

    const-string v1, "exitLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public final P0()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_title_modify_nickname:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;->setTitle(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_title_nickname:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;->setSubTitle(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;->setOriginText(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->user_nickname_max_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;->setMaxLength(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;->setCloseOnFinish(Z)Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$showNameInputDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$showNameInputDialog$1$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;->addContentCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/category/view/dialog/ContentInputDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$startAuthService$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$startAuthService$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final R0()V
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    const-string v3, "photo"

    invoke-virtual {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getCacheFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->m1:Ljava/io/File;

    new-instance v0, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->o1:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "takePhotoLauncher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;-><init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->m1:Ljava/io/File;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;->setFile(Ljava/io/File;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final S0()V
    .locals 2

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_huawei_unbind_warning:I

    new-instance v1, Lcom/sunia/HTREnginev2/v5;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v5;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->y0(ILio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final U0()V
    .locals 2

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_wechat_unbind_warning:I

    new-instance v1, Lcom/sunia/HTREnginev2/u5;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u5;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->y0(ILio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final W0()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/UpdateAvatarAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->n1:Ljava/io/File;

    if-nez v2, :cond_0

    const-string v2, "avatar"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/data/account/action/UpdateAvatarAction;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$k;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$k;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v1, "doOnNext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$uploadAvatarImage$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$uploadAvatarImage$$inlined$handleTimeoutError$1;

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

.method public getReloadLayoutOnConfigurationChanged$note_overseasRelease()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->i1:Z

    return p0
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
    const/16 p2, 0x3ed

    if-ne p1, p2, :cond_1

    invoke-static {p3}, Lcom/onyx/android/sdk/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->G0(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff9b

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->B0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->unregisterHuaweiLauncher()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->L0()V

    return-void
.end method

.method public final p0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getEvents()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$j;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$j;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->B0()Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/HuaweiVerifyViewModel;->getEvents()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$j;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$j;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/extension/FragmentKt;->getNavigationResult$default(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$addFragmentEvents$3;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$j;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$j;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final q0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/w5;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w5;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final s0()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/ui/dialog/ConfirmDialogAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_title_log_out:I

    sget v3, Lcom/onyx/galaxy/note/R$string;->user_tip_logout:I

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/ui/dialog/ConfirmDialogAction;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$b;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
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

    invoke-static {p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->setViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->C0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->j1:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;

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

.method public final t0()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "bind"

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToBindEmail(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToBindEmail;

    move-result-object v0

    const-string v1, "accountCenterToBindEmail(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final u0()V
    .locals 1

    const-string v0, "bind"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method public final v0()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "bind"

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToBindPhone(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToBindPhone;

    move-result-object v0

    const-string v1, "accountCenterToBindPhone(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final w0()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "bind"

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToWechatVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;

    move-result-object v0

    const-string v1, "accountCenterToWechatVerify(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final x0()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_cancel_agreement:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_continue_use:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_cancel_agreement:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$cancelUserAgreement$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$cancelUserAgreement$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public final y0(ILio/reactivex/rxjava3/functions/Consumer;)V
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->A0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCountOfBondSocialAccount()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "requireActivity(...)"

    if-gt v0, v1, :cond_0

    new-instance v3, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/onyx/android/sdk/universal/R$string;->tip:I

    sget p2, Lcom/onyx/galaxy/note/R$string;->user_bind_one_social_at_least:I

    invoke-direct {v3, p0, p1, p2}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;-><init>(Landroid/content/Context;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/ui/sticker/ShowConfirmDialogAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/onyx/android/sdk/base/R$string;->tip:I

    invoke-direct {v0, p0, v1, p1}, Lcom/onyx/galaxy/note/ui/sticker/ShowConfirmDialogAction;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$c;->e:Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment$c;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    const-string v3, "photo"

    invoke-virtual {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getCacheFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->n1:Ljava/io/File;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->m1:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/FileKt;->toProviderUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragment;->n1:Ljava/io/File;

    if-nez p0, :cond_1

    const-string p0, "avatar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;->accountCenterToImageCrop(Landroid/net/Uri;Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToImageCrop;

    move-result-object p0

    const-string v0, "accountCenterToImageCrop(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method
