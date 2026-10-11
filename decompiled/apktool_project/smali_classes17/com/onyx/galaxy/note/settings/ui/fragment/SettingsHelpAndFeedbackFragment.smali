.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsHelpAndFeedbackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsHelpAndFeedbackFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,326:1\n106#2,15:327\n65#3,16:342\n93#3,3:358\n65#3,16:361\n93#3,3:377\n37#4,2:380\n*S KotlinDebug\n*F\n+ 1 SettingsHelpAndFeedbackFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment\n*L\n70#1:327,15\n143#1:342,16\n143#1:358,3\n148#1:361,16\n148#1:377,3\n306#1:380,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 R2\u00020\u0001:\u0001RB\u0007\u00a2\u0006\u0004\u0008P\u0010QJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0016\u0010\u0013\u001a\u00020\u00022\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0012\u0010\u0017\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\"\u0010$\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\r2\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0017J\u0010\u0010\'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0016R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010.\u001a\u0004\u00084\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001b\u0010C\u001a\u00020?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010.\u001a\u0004\u0008A\u0010BR\u001b\u0010G\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010.\u001a\u0004\u0008E\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008M\u0010N\u00a8\u0006S"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "L0",
        "I0",
        "v0",
        "M0",
        "Q0",
        "O0",
        "D0",
        "G0",
        "Landroid/widget/TextView;",
        "tv",
        "",
        "strRes",
        "A0",
        "B0",
        "Lkotlin/Function0;",
        "task",
        "t0",
        "P0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "d1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;",
        "e1",
        "Lkotlin/Lazy;",
        "z0",
        "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;",
        "f1",
        "y0",
        "()Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;",
        "typeAdapter",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;",
        "g1",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;",
        "pictureAdapter",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;",
        "h1",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;",
        "footerAdapter",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "i1",
        "w0",
        "()Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "adapterHelper",
        "j1",
        "x0",
        "()I",
        "maxPictureCount",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "k1",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "emailOp",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;",
        "l1",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;",
        "binding",
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
        "SMAP\nSettingsHelpAndFeedbackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsHelpAndFeedbackFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,326:1\n106#2,15:327\n65#3,16:342\n93#3,3:358\n65#3,16:361\n93#3,3:377\n37#4,2:380\n*S KotlinDebug\n*F\n+ 1 SettingsHelpAndFeedbackFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment\n*L\n70#1:327,15\n143#1:342,16\n143#1:358,3\n148#1:361,16\n148#1:377,3\n306#1:380,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_FEEDBACK_EMAIL:Ljava/lang/String; = "user_feedback_email"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k1:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->Companion:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->d1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$typeAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$typeAdapter$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->g1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->h1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$adapterHelper$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$adapterHelper$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->i1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$maxPictureCount$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$maxPictureCount$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->j1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "user_feedback_email"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->k1:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-void
.end method

.method public static final C0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Z)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/Matisse;->from(Landroidx/fragment/app/Fragment;)Lcom/onyx/android/sdk/matisse/Matisse;

    move-result-object p1

    const-string v0, "from(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/MatisseKt;->buildSelectionCreator(Lcom/onyx/android/sdk/matisse/Matisse;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->x0()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->maxSelectable(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const/16 p1, 0x3eb

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->forResult(I)V

    return-void
.end method

.method public static final E0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->B0()V

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->g1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->removePicture(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->w0()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->h1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->addAfterAdapter(Lcom/chad/library/adapter4/BaseQuickAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper;

    return-void
.end method

.method public static final H0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->y0()Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;->checkType(I)V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method

.method public static final K0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->M0()V

    return-void
.end method

.method public static final N0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->d1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getPictureAdapter$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->g1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;

    return-object p0
.end method

.method public static final synthetic access$getTypeAdapter(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->y0()Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateFooter(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->O0()V

    return-void
.end method

.method public static final synthetic access$updateUploadPictureTitle(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->Q0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->N0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->H0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n0(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Ljava/util/List;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->u0(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Ljava/util/List;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->F0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->K0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->J0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->E0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->C0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Z)V

    return-void
.end method

.method public static final u0(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Ljava/util/List;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "$task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "<anonymous parameter 2>"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "requireActivity(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/extension/ActivityKt;->shouldShowGuideToPermissionSettings(Landroid/app/Activity;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final A0(Landroid/widget/TextView;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    sget p2, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p2

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, p2, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final B0()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_UPLOAD_PICTURES_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_UPLOAD_PICTURES_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestImagePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/rjm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rjm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final D0()V
    .locals 9

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->h1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/ojm;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/ojm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->g1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPictureAdapter;

    sget v2, Lcom/onyx/galaxy/note/R$id;->iv_delete:I

    new-instance v3, Lcom/sunia/HTREnginev2/pjm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/pjm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->rvPicture:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->rvPicture:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->w0()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final G0()V
    .locals 9

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->y0()Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;

    move-result-object v3

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/njm;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/njm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->rvType:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->rvType:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->y0()Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final I0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->ivBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/ljm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ljm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->tvType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvType"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/onyx/galaxy/note/R$string;->feedback_type:I

    invoke-virtual {p0, v0, v3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->A0(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->tvMemo:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvMemo"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/onyx/galaxy/note/R$string;->feedback_memo:I

    invoke-virtual {p0, v0, v3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->A0(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->tvEmail:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvEmail"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/onyx/galaxy/note/R$string;->feedback_email:I

    invoke-virtual {p0, v0, v3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->A0(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->G0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->D0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->Q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->O0()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->edtMemo:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v3, Lcom/onyx/android/sdk/ui/ExclusiveEmojiFilter;

    invoke-direct {v3}, Lcom/onyx/android/sdk/ui/ExclusiveEmojiFilter;-><init>()V

    filled-new-array {v3}, [Lcom/onyx/android/sdk/ui/ExclusiveEmojiFilter;

    move-result-object v3

    check-cast v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->edtMemo:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string v3, "edtMemo"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->edtEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v3, Lcom/onyx/android/sdk/ui/ExclusiveEmojiFilter;

    invoke-direct {v3}, Lcom/onyx/android/sdk/ui/ExclusiveEmojiFilter;-><init>()V

    filled-new-array {v3}, [Lcom/onyx/android/sdk/ui/ExclusiveEmojiFilter;

    move-result-object v3

    check-cast v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->edtEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string v3, "edtEmail"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initView$$inlined$addTextChangedListener$default$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initView$$inlined$addTextChangedListener$default$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->tvSubmit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/mjm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/mjm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->v0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez p0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string v0, "getRoot(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->adjustSizeOfImeCompat(Landroid/view/View;)V

    return-void
.end method

.method public final L0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$a;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final M0()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->checkMemo()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->feedback_memo_input_hint:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getEmail()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->feedback_email_input_hint:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->checkEmail()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->feedback_email_error_hint:I

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->k1:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getEmail()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->submit(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$b;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$b;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/sunia/HTREnginev2/sjm;

    invoke-direct {v3, v0}, Lcom/sunia/HTREnginev2/sjm;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string v0, "doOnNext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v5, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;->INSTANCE:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$submit$disposable$4;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->d1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final O0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->x0()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->w0()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->h1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/QuickAdapterHelper;->removeAdapter(Lcom/chad/library/adapter4/BaseQuickAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->w0()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->h1:Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackPickPictureFooterAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->addAfterAdapter(Lcom/chad/library/adapter4/BaseQuickAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper;

    :cond_1
    return-void
.end method

.method public final P0()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getScreenDevice()Lcom/onyx/android/sdk/device/IScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/device/IScreen;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getScreenDisplayType()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PHONE:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_400:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez p0, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->tvSubmit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public final Q0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->feedback_upload_picture:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->x0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->tvUploadPic:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3}, Lcom/onyx/android/sdk/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    const-string p3, "obtainResult(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->getPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->P0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffa3

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez p0, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->I0()V

    return-void
.end method

.method public final t0(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x21

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p0}, Lcom/permissionx/guolindev/PermissionX;->init(Landroidx/fragment/app/Fragment;)Lcom/permissionx/guolindev/PermissionMediator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/permissionx/guolindev/PermissionMediator;->permissions(Ljava/util/List;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/qjm;

    invoke-direct {v2, p1, p0, v0}, Lcom/sunia/HTREnginev2/qjm;-><init>(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->request(Lcom/permissionx/guolindev/callback/RequestCallback;)V

    return-void
.end method

.method public final v0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->k1:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->edtEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->k1:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->l1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->edtEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final w0()Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->i1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter4/QuickAdapterHelper;

    return-object p0
.end method

.method public final x0()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->j1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final y0()Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;

    return-object p0
.end method

.method public final z0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    return-object p0
.end method
