.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->access$showSyncLoginDialog(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    .line 4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->hasStoragePermissionByConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->access$checkPermission(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lio/reactivex/rxjava3/core/Observable;

    .line 7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$initSwitch$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
