.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0002R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "n0",
        "q0",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "e1",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "inkBeautifyEnableOption",
        "f1",
        "inkBeautifyTypesetEnableOption",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

.field public e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getEnableInkBeautifyOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getEnableInkBeautifyTypesetOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->p0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->o0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final o0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->typesetSwitchButton:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p2, Lcom/onyx/galaxy/note/R$string;->ink_beautify_settings_open_hint:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->q0()V

    return-void
.end method

.method public static final p0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final n0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->inkBeautySwitchButton:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->inkBeautySwitchButton:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v3, Lcom/sunia/HTREnginev2/dim;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/dim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->typesetSwitchButton:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->typesetSwitchButton:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/eim;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eim;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->q0()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->n0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->typesetSwitchButton:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->max_alpha:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$dimen;->half_alpha:I

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsAiFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsAiBinding;->typesetSwitchButton:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
