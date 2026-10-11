.class public abstract Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final addPages:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final btnBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final displayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteRecyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pageBtnBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pageLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchView:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tieName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthInputTextEdit;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/LinearLayout;Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;Lcom/onyx/android/sdk/ui/TouchModeMaxLengthInputTextEdit;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->addPages:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->displayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->noteLayout:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->noteRecyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->pageBtnBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->pageLayout:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->searchView:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->tieName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthInputTextEdit;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_select_note_pages:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_select_note_pages:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_select_note_pages:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupSelectNotePagesBinding;

    return-object p0
.end method
