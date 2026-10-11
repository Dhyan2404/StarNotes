.class public abstract Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnAudioClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnAudioMore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnAudioPlay:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivBack:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivCustomShortcut:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSyncStatus:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivTabIndicator:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivTitleCloud:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mAudioViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final playLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playProgressTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressSync:Lcom/google/android/material/progressindicator/CircularProgressIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final seekBar:Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPlaySpeed:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioMore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioPlay:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivBack:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivCustomShortcut:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivSyncStatus:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivTabIndicator:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivTitleCloud:Landroid/widget/FrameLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playProgressTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->progressSync:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->tvPlaySpeed:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_function_tool:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_function_tool:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_function_tool:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    return-object p0
.end method


# virtual methods
.method public getAudioViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->mAudioViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    return-object p0
.end method

.method public abstract setAudioViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
