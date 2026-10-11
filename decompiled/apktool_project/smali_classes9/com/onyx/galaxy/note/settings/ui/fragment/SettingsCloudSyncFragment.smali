.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsCloudSyncFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudSyncFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,129:1\n106#2,15:130\n*S KotlinDebug\n*F\n+ 1 SettingsCloudSyncFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment\n*L\n26#1:130,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J#\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u000bH\u0002J\u0008\u0010\u0015\u001a\u00020\u000bH\u0002J\u0008\u0010\u0016\u001a\u00020\u000bH\u0002R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "",
        "onViewCreated",
        "r0",
        "x0",
        "",
        "total",
        "used",
        "z0",
        "(Ljava/lang/Long;Ljava/lang/Long;)V",
        "A0",
        "s0",
        "y0",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "p0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;",
        "e1",
        "q0",
        "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;",
        "viewModel",
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
        "SMAP\nSettingsCloudSyncFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudSyncFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,129:1\n106#2,15:130\n*S KotlinDebug\n*F\n+ 1 SettingsCloudSyncFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment\n*L\n26#1:130,15\n*E\n"
    }
.end annotation


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->e1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showSyncLoginDialog(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->y0()V

    return-void
.end method

.method public static final synthetic access$updateCloudSpace(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->z0(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic l0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->v0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->w0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->t0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->u0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final t0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->configureWifiOnly(Z)V

    return-void
.end method

.method public static final u0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->configureWifiOnly(Z)V

    return-void
.end method

.method public static final v0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->configureAutoSync(Z)V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudSyncLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->last_backup_time:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->tvLastModify:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->tvLastModify:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_0
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

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->setViewModel(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->s0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->x0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->r0()V

    return-void
.end method

.method public final p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    return-object p0
.end method

.method public final q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    return-object p0
.end method

.method public final r0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getStorageLimit()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getStorageUsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->z0(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->getCloudStorageStatus()V

    return-void
.end method

.method public final s0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;->flWifiOnlyContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/rim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;->flWifiAndMobileContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/sim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/sim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->tvGetMoreSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/tim;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tim;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->switchAutoSync:Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$initListener$4$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$initListener$4$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;->setClickCallback(Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/sunia/HTREnginev2/uim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final x0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->isAutoSync()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->getCloudStorageStatusBean()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$a;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final y0()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->cloud_sync_login_content:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->cloud_sync_login_confirm:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$showSyncLoginDialog$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment$showSyncLoginDialog$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public final z0(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 5

    sget v0, Lcom/onyx/galaxy/note/R$string;->default_cloud_space_total:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->default_cloud_space_use:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBinding;->tvCloudSpaceLeft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/onyx/galaxy/note/R$string;->cloud_space_left:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudSyncFragment;->A0()V

    return-void
.end method
