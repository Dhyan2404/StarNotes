.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 42\u00020\u0001:\u00014B\u0007\u00a2\u0006\u0004\u00082\u00103J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0012\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016R\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010$\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001e\u001a\u0004\u0008#\u0010 R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001e\u001a\u0004\u0008\'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "",
        "U0",
        "H0",
        "I0",
        "K0",
        "G0",
        "Z0",
        "V0",
        "Y0",
        "W0",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "result",
        "F0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onStart",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;",
        "z1",
        "Lkotlin/Lazy;",
        "C0",
        "()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;",
        "adapter",
        "A1",
        "D0",
        "searchAdapter",
        "Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;",
        "B1",
        "E0",
        "()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;",
        "C1",
        "Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "D1",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "provider",
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
.field public static final Companion:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final E1:Ljava/lang/String; = "args_param_provider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CloudRestoreFileListDialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

.field public D1:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

.field public final z1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->Companion:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$adapter$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$adapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->z1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$searchAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$searchAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->A1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$viewModel$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->B1:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->R0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->T0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final L0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->W0()V

    return-void
.end method

.method public static final M0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->V0()V

    return-void
.end method

.method public static final N0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final O0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static final P0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->edtSearch:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final Q0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->Z0()V

    return-void
.end method

.method public static final R0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->G0()V

    return-void
.end method

.method public static final S0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->toggleSelect(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p2, p0

    :goto_1
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$string;->un_select_all:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object p2, p0

    :goto_2
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$string;->select_all:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public static final T0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->toggleSelect(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static final X0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->I0()V

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    return-object p0
.end method

.method public static final synthetic access$getProvider$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D1:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method

.method public static final synthetic access$getSearchAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleLoadMoreSate(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->F0(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)V

    return-void
.end method

.method public static final synthetic access$resetSelectViews(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->Y0()V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->J0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->X0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->L0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->O0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->Q0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->M0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->P0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->N0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->S0(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->z1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    return-object p0
.end method

.method public final D0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->A1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    return-object p0
.end method

.method public final E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->B1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    return-object p0
.end method

.method public final F0(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D1:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;->hasMoreData(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Z

    move-result p1

    const-string v0, "binding"

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->sfl:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    return-void

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->sfl:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    return-void
.end method

.method public final G0()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getSearchKeyword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->ensureCloudStorageProvider()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$a;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$b;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final H0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$i;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getSearchList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$i;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getSearchKeyword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$i;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->edtSearch:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string v1, "edtSearch"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->searchOnTextChange(Landroid/widget/TextView;)V

    return-void
.end method

.method public final I0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->loadInitDataList()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$c;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$c;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$d;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$d;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/tvd;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/tvd;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getCompositeDisposable()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final K0()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/vvd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/vvd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->ivDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/wvd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/wvd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/xvd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xvd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/yvd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/yvd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v0

    new-instance v3, Lcom/sunia/HTREnginev2/zvd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/zvd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v0

    new-instance v3, Lcom/sunia/HTREnginev2/awd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/awd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->sfl:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    new-instance v3, Lcom/scwang/smart/refresh/header/ClassicsHeader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/scwang/smart/refresh/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smart/refresh/layout/api/RefreshHeader;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    new-instance v3, Lcom/scwang/smart/refresh/footer/ClassicsFooter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/scwang/smart/refresh/footer/ClassicsFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smart/refresh/layout/api/RefreshFooter;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/bwd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/bwd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/cwd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cwd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smart/refresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->edtSearch:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v0, Lcom/sunia/HTREnginev2/dwd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dwd;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public final U0()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->rvSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/onyx/galaxy/note/R$string;->dialog_settings_drive_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getApplicationContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->D1:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    if-nez v5, :cond_2

    const-string v5, "provider"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v1, 0x1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final V0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->loadInitDataList()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$e;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getCompositeDisposable()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final W0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->loadMoreDataList()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$g;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$h;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getCompositeDisposable()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final Y0()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->select_all:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final Z0()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    const/4 v0, 0x0

    const-string v3, "binding"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->select_all:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_3
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->un_select_all:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v2, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez v2, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C0()Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffa9

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {p1, p2, v1}, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

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

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->E0()Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->dispose()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    invoke-virtual {v0, p0, p0}, Landroid/view/Window;->setLayout(II)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
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

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->U0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->K0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->H0()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/uvd;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/uvd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
