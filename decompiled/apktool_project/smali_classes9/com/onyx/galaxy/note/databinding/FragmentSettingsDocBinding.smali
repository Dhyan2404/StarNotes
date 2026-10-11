.class public abstract Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final includePronunciation:Lcom/onyx/galaxy/note/databinding/LayoutPronunciationSelectBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivQuicklyTemplateExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final quickNoteTemplate:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchAppendPage:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchPaperMovesFreely:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchSlideToAdd:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPronunciation:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/galaxy/note/databinding/LayoutPronunciationSelectBinding;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->includePronunciation:Lcom/onyx/galaxy/note/databinding/LayoutPronunciationSelectBinding;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->ivQuicklyTemplateExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->quickNoteTemplate:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->switchAppendPage:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->switchPaperMovesFreely:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->switchSlideToAdd:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->tvPronunciation:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_settings_doc:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_settings_doc:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_settings_doc:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsDocBinding;

    return-object p0
.end method
