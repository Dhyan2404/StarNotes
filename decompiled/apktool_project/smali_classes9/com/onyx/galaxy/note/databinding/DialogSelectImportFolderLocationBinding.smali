.class public abstract Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final cardList:Lcom/onyx/android/sdk/theme/widgets/TintCardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flList:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final includeEmptyView:Lcom/onyx/galaxy/note/databinding/EmptyViewManageFolderBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rvSearch:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rvSelect:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView4:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView6:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintCardView;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/databinding/EmptyViewManageFolderBinding;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;Lcom/onyx/android/sdk/ui/MediumTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->cardList:Lcom/onyx/android/sdk/theme/widgets/TintCardView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->flList:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->includeEmptyView:Lcom/onyx/galaxy/note/databinding/EmptyViewManageFolderBinding;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->rvSearch:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->rvSelect:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->textView4:Lcom/onyx/android/sdk/ui/MediumTextView;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->textView6:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    iput-object p14, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p15, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_select_import_folder_location:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_select_import_folder_location:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_select_import_folder_location:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportFolderLocationBinding;

    return-object p0
.end method
