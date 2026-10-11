.class final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudRestoreFileListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,282:1\n256#2,2:283\n256#2,2:285\n256#2,2:287\n256#2,2:289\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3\n*L\n135#1:283,2\n136#1:285,2\n137#1:287,2\n138#1:289,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCloudRestoreFileListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,282:1\n256#2,2:283\n256#2,2:285\n256#2,2:287\n256#2,2:289\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3\n*L\n135#1:283,2\n136#1:285,2\n137#1:287,2\n138#1:289,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->sfl:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const-string v3, "sfl"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 4
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->rvSearch:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "rvSearch"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    .line 6
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->ivDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivDelete"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v5

    .line 8
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvSelectAll"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    .line 10
    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_a

    .line 11
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_8
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->select_all:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v1, p1

    :goto_4
    iget-object p1, v1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getSearchAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    .line 15
    :cond_a
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getSearchAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object v1, p1

    :goto_5
    iget-object p1, v1, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$3;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    :goto_6
    return-void
.end method
