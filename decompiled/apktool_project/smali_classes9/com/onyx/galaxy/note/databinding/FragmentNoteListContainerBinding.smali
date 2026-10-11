.class public abstract Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomList:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fcFolderRoot:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fcViewPage:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final topContainer:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bottomList:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->fcFolderRoot:Landroidx/fragment/app/FragmentContainerView;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->fcViewPage:Landroidx/fragment/app/FragmentContainerView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->topContainer:Landroidx/fragment/app/FragmentContainerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_note_list_container:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_note_list_container:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_note_list_container:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    return-object p0
.end method


# virtual methods
.method public getViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->mViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public abstract setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
