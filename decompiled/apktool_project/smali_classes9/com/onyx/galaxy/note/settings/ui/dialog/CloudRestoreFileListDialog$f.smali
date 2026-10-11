.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$resetSelectViews(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->sfl:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;->e:Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog;)Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/DialogSettingsDriveBinding;->sfl:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreFileListDialog$f;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)V

    return-void
.end method
