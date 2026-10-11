.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsMoreFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsMoreFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,159:1\n256#2,2:160\n256#2,2:162\n256#2,2:164\n256#2,2:166\n*S KotlinDebug\n*F\n+ 1 SettingsMoreFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment\n*L\n97#1:160,2\n101#1:162,2\n107#1:164,2\n111#1:166,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\nH\u0002R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;",
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
        "B0",
        "y0",
        "G0",
        "N0",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;)V",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;",
        "d1",
        "Lkotlin/Lazy;",
        "x0",
        "()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;",
        "languageAdapter",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "e1",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "screenOnOption",
        "f1",
        "hideStatusBarOption",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsMoreFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsMoreFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,159:1\n256#2,2:160\n256#2,2:162\n256#2,2:164\n256#2,2:166\n*S KotlinDebug\n*F\n+ 1 SettingsMoreFragment.kt\ncom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment\n*L\n97#1:160,2\n101#1:162,2\n107#1:164,2\n111#1:166,2\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    sget-object v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$languageAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$languageAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->d1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getScreenOnOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getStatusBarHideOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeLanguageContainer:Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;->languageContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string p1, "languageContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final C0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/ScreenLightUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ScreenLightUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/utils/ScreenLightUtils;->globalKeepScreenOnChange(Z)V

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-static {p2}, Lcom/onyx/android/sdk/extension/ActivityExtKt;->updateFullScreenStyle(Z)V

    return-void
.end method

.method public static final E0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;->getSETTINGS_MORE_STAR_NOTE_WEBSITE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/device/ProcessTextExtKt;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;->getSETTINGS_MORE_ICP_WEBSITE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/device/ProcessTextExtKt;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static final H0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->PRIVACY:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-direct {p1, p0, v0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final I0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->SERVICE:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-direct {p1, p0, v0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->INFORMATION:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-direct {p1, p0, v0}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final K0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->starNoteDiscoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string p1, "starNoteDiscoverContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final L0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->starNoteDiscoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string p1, "starNoteDiscoverContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final M0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->x0()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->getSelectLanguage()Lcom/onyx/galaxy/note/settings/data/LanguageType;

    move-result-object p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->x0()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->setSelectLanguage(Lcom/onyx/galaxy/note/settings/data/LanguageType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->tvLanguage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/LanguageType;->getDisplayName()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->DEFAULT:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    const/4 p2, 0x1

    if-ne p1, p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p3, Lcom/onyx/android/sdk/base/utils/LanguageManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LanguageManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/LanguageType;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p3, p1, p0, p2}, Lcom/onyx/android/sdk/base/utils/LanguageManager;->setLocale(Ljava/util/Locale;ZZ)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->reset()V

    :cond_1
    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->F0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->H0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->E0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->C0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->K0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->I0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->A0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->z0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->J0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->M0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->L0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->D0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeLanguageContainer:Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;->languageContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string p1, "languageContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->y0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->G0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->switchKeepScreenOn:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/ckm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ckm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->switchHideStatusBar:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/dkm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dkm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->getOpened()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$initListener$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$initListener$3;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->switchEyesComfortSetting:Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$initListener$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment$initListener$4;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;->setClickCallback(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvDiscoverStartNote:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvDiscoverStartNote"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ekm;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ekm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->layoutIcpContainer:Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;->tvIcp:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvIcp"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/fkm;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/fkm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final G0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->aboutStartNoteContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/gkm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gkm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvStarNoteBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/hkm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hkm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->x0()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ikm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ikm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvPrivacyAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/jkm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jkm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvUserAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/zjm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zjm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvInformationList:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/akm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/akm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final N0()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->Companion:Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/LanguageManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LanguageManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/LanguageManager;->getAppLanguageStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;->getByAppLanguageCode(Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/data/LanguageType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->switchKeepScreenOn:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->switchHideStatusBar:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->tvLanguage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/LanguageType;->getDisplayName()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeLanguageContainer:Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;->rlLanguageList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeLanguageContainer:Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;->rlLanguageList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->x0()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->x0()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;->getLanguageListFromConfig()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->x0()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->setSelectLanguage(Lcom/onyx/galaxy/note/settings/data/LanguageType;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->version:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvVersion:Lcom/onyx/galaxy/note/settings/ui/LongPressPalmCollectionTextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeStarNoteDiscover:Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvServiceContact:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v1, Lcom/onyx/galaxy/note/R$string;->service_contact_prefix:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;->getSETTINGS_SERVICE_CONTACT()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->binding:Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->setBinding(Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->N0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->B0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->binding:Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    return-void
.end method

.method public final x0()Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;

    return-object p0
.end method

.method public final y0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->flLanguageItem:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/yjm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yjm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsMoreBinding;->includeLanguageContainer:Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutLanguageSelectBinding;->tvLanguageBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/bkm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bkm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
