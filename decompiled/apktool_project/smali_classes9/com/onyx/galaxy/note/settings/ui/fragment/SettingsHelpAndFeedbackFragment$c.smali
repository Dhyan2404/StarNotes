.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->M0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->access$getViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsHelpAndFeedbackViewModel;->cleanSubmitData()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->access$getTypeAdapter(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/settings/ui/adapter/FeedbackTypeAdapter;->checkType(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsHelpAndFeedbackBinding;->edtMemo:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->feedback_submit_succeed:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->feedback_submit_error:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$c;->a(Z)V

    return-void
.end method
