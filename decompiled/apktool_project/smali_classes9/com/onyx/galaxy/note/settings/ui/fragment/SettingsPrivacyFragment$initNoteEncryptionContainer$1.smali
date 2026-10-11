.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteEncryptionContainer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;->F0()V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteEncryptionContainer$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteEncryptionContainer$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createNoteEncryptionLoginDialog(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteEncryptionContainer$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;->access$getDialogHolder$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;)Lcom/onyx/android/sdk/ui/ObjectHolder;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/ui/ObjectHolderKt;->add(Lcom/onyx/android/sdk/ui/ObjectHolder;Landroid/app/Dialog;)V

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->isEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteEncryptionContainer$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;->access$setNotePassword(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteEncryptionContainer$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;->access$onDisableNoteEncryption(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;)V

    .line 10
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteEncryptionContainer$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
