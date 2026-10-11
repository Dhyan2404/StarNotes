.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteIdleAutoLockIntervalContainer$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "interval",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteIdleAutoLockIntervalContainer$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteIdleAutoLockIntervalContainer$1$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteIdleAutoLockIntervalContainer$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;->access$getBinding(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsPrivacyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsPrivacyBinding;->includeSettingsPrivacyContainer:Lcom/onyx/galaxy/note/databinding/IncludeSettingsPrivacyContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeSettingsPrivacyContainerBinding;->tvNoteIdleAutoLockInterval:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment$initNoteIdleAutoLockIntervalContainer$1$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsPrivacyFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsPrivacyViewModel;->configureNoteEncryptionInterval(I)V

    return-void
.end method
