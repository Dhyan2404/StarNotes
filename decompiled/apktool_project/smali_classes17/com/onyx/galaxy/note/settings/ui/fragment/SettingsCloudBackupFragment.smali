.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$Companion;,
        Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsCloudBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,409:1\n106#2,15:410\n256#3,2:425\n288#4,2:427\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment\n*L\n70#1:410,15\n268#1:425,2\n378#1:427,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0008*\u0001;\u0018\u0000 A2\u00020\u0001:\u0001AB\u0007\u00a2\u0006\u0004\u0008?\u0010@J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0011H\u0002J!\u0010\u0014\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0011H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u000fH\u0002J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002J\u0012\u0010\u001e\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J$\u0010$\u001a\u00020#2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0007J\u001a\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020#2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010&\u001a\u00020*H\u0007R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010.\u001a\u0004\u00084\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "E0",
        "R0",
        "G0",
        "T0",
        "Y0",
        "z0",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "provider",
        "A0",
        "V0",
        "U0",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "y0",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "W0",
        "isAuth",
        "X0",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Boolean;)V",
        "D0",
        "Landroid/widget/TextView;",
        "textView",
        "auth",
        "Z0",
        "x0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "event",
        "onAccountChange",
        "view",
        "onViewCreated",
        "Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;",
        "receiveCloudAuthEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "B0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;",
        "e1",
        "C0",
        "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;",
        "viewModel",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "f1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "com/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1",
        "g1",
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;",
        "refreshDriverReceiver",
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
        "SMAP\nSettingsCloudBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,409:1\n106#2,15:410\n256#3,2:425\n288#4,2:427\n*S KotlinDebug\n*F\n+ 1 SettingsCloudBackupFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment\n*L\n70#1:410,15\n268#1:425,2\n378#1:427,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SettingsCloudBackupFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g1:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->Companion:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->f1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->g1:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->R0()V

    return-void
.end method

.method public static final H0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->D0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final I0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->D0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->D0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final K0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->configureWifiOnly(Z)V

    return-void
.end method

.method public static final L0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->configureWifiOnly(Z)V

    return-void
.end method

.method public static final M0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->W0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final N0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->W0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final O0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->W0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final P0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->V0()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->hasBindDrive()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/onyx/galaxy/note/settings/action/PrepareBackupNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/settings/action/PrepareBackupNoteAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/iim;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/iim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->cloud_backup_no_bind_hint:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :goto_0
    return-void
.end method

.method public static final Q0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->z0()V

    return-void
.end method

.method public static final S0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->hasBindDrive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->configureAutoBackup(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->cloud_backup_no_bind_hint:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$checkPermission(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->y0()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->f1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getRefreshDriverReceiver$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->g1:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;

    return-object p0
.end method

.method public static final synthetic access$initData(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->E0()V

    return-void
.end method

.method public static final synthetic access$login(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->U0()V

    return-void
.end method

.method public static final synthetic access$showSyncLoginDialog(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->V0()V

    return-void
.end method

.method public static final synthetic access$updateLastTime(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->Y0()V

    return-void
.end method

.method public static final synthetic access$updateStateTextColor(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->Z0(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->I0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->N0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->S0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->K0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->M0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->P0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->J0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->H0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->Q0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Z)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->O0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->L0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->F0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    return-void
.end method


# virtual methods
.method public final A0(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->Companion:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;->newInstance(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "CloudRestoreFileListDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    return-object p0
.end method

.method public final C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    return-object p0
.end method

.method public final D0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->V0()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->getAuthProvider()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v4

    if-ne v4, p1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->A0(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind_format_hint:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "requireContext(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "format(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(Ljava/lang/CharSequence;Z)V

    :goto_2
    return-void
.end method

.method public final E0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->checkNetDiskAuth()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/fim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->f1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isEnableAutoBackup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->hasStoragePermissionByConfig(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->configureAutoBackup(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAutoBackup()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthBaidu()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthGoogleDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$3;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthOneDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$4;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initData$4;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final G0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;->flWifiAndMobileContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/kim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;->flWifiOnlyContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/lim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBaiduBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvBaiduBindState"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/mim;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/mim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvGoogleBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvGoogleBindState"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/nim;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/nim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvOnedriveBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvOnedriveBindState"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/oim;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/oim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBackupNow:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvBackupNow"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/pim;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/pim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBaiduImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvBaiduImport"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/qim;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/qim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvGoogleImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvGoogleImport"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/gim;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/gim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvOnedriveImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvOnedriveImport"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/him;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/him;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final R0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->switchAutoBackup:Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;->setClickCallback(Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/sunia/HTREnginev2/jim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final T0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->Y0()V

    return-void
.end method

.method public final U0()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$login$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$login$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireActivitySafety$default(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final V0()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final W0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->V0()V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthOneDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->X0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthGoogleDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->X0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthBaidu()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->X0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public final X0(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "subscribe(...)"

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->deleteNetDiskAuth(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->oAuthDrive(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->f1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final Y0()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudBackupLastTime()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$string;->last_backup_time:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvLastCloudBackTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvLastCloudBackTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvLastCloudBackTime"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final Z0(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_03:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final onAccountChange(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->checkNetDiskAuth()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffa5

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

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->setViewModel(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->B0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->E0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->T0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->G0()V

    return-void
.end method

.method public final receiveCloudAuthEvent(Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->C0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->checkNetDiskAuth()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->f1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsCloudBackupFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;->getAuthResult()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind_fail_hint:I

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind_success_hint:I

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind_fail_hint:I

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :goto_0
    return-void
.end method

.method public final x0()Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->network_error_hint:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_0
    return p0
.end method

.method public final y0()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_CLOUD_BACKUP_FUNCTION_NAME()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_CLOUD_BACKUP_INTENT_NAME()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v3, v1}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestStoragePermissionAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final z0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
