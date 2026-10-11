.class public abstract Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final barrier1:Landroidx/constraintlayout/widget/Barrier;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnClear:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cgHistory:Lcom/google/android/material/chip/ChipGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final closeSearchButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cls:Landroidx/constraintlayout/motion/widget/MotionLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final countText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideline1:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hwrSwitchButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivLibrary:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSetting:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llOps:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loadingLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loadingView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mNoteViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSearchViewModel:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final progressText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rvSearch:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final svHistory:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textInputLayoutName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvHistoryTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vBg:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vDivider:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/google/android/material/chip/ChipGroup;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/category/view/CommonEmptyView;Landroidx/constraintlayout/widget/Guideline;Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/LinearLayout;Lcom/onyx/galaxy/note/ui/view/ShadowLayout;Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/widget/ScrollView;Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->barrier1:Landroidx/constraintlayout/widget/Barrier;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->btnClear:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cgHistory:Lcom/google/android/material/chip/ChipGroup;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->closeSearchButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->countText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->guideline1:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->hwrSwitchButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->ivExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->ivLibrary:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->ivSetting:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->llOps:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->loadingLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->loadingView:Landroid/widget/ImageView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->progressText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->rvSearch:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->svHistory:Landroid/widget/ScrollView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputLayoutName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->tvHistoryTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->vBg:Lcom/onyx/android/sdk/theme/widgets/TintView;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->vDivider:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_search_note:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_search_note:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_search_note:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    return-object p0
.end method


# virtual methods
.method public getNoteViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->mNoteViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public getSearchViewModel()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->mSearchViewModel:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    return-object p0
.end method

.method public abstract setNoteViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setSearchViewModel(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
