.class final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1;
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
        "Ljava/util/List<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudRestoreFileListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,282:1\n256#2,2:283\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1\n*L\n127#1:283,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "kotlin.jvm.PlatformType",
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
        "SMAP\nCloudRestoreFileListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,282:1\n256#2,2:283\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1\n*L\n127#1:283,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v1, "emptyView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$initData$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getAdapter(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/CloudRestoreFileListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
