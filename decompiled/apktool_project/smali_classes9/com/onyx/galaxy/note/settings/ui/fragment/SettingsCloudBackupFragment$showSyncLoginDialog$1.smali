.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/Context;",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1;->invoke(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    sget p1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$string;->network_disk_backup_login_content:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    .line 5
    sget v0, Lcom/onyx/galaxy/note/R$string;->cloud_sync_login_confirm:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    .line 6
    sget v0, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1$1;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$showSyncLoginDialog$1$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method
